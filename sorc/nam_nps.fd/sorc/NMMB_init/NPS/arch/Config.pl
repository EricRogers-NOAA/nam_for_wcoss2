#!/usr/bin/perl
#
# Configuration script for NPS code
# 
# Be sure to run as ./configure (to avoid getting a system configure command by mistake)
#

$sw_perl_path = perl ;
$sw_netcdf_path = "" ;
$sw_phdf5_path=""; 
$sw_jasperlib_path=""; 
$sw_jasperinc_path=""; 
$sw_esmflib_path="";
$sw_esmfinc_path="";
$sw_ldflags=""; 
$sw_compileflags=""; 
$WRFCHEM = 0 ;
$sw_os = "ARCH" ;           # ARCH will match any
$sw_mach = "ARCH" ;         # ARCH will match any

while ( substr( $ARGV[0], 0, 1 ) eq "-" )
 {
  if ( substr( $ARGV[0], 1, 5 ) eq "perl=" )
  {
    $sw_perl_path = substr( $ARGV[0], 6 ) ;
  }
  if ( substr( $ARGV[0], 1, 7 ) eq "netcdf=" )
  {
    $sw_netcdf_path = substr( $ARGV[0], 8 ) ;
  }
  if ( substr( $ARGV[0], 1, 6 ) eq "phdf5=" )
  {
    $sw_phdf5_path = substr( $ARGV[0], 7 ) ;
  }
  if ( substr( $ARGV[0], 1, 3 ) eq "os=" )
  {
    $sw_os = substr( $ARGV[0], 4 ) ;
  }
  if ( substr( $ARGV[0], 1, 5 ) eq "mach=" )
  {
    $sw_mach = substr( $ARGV[0], 6 ) ;
  }
  if ( substr( $ARGV[0], 1, 8 ) eq "ldflags=" )
  {
    $sw_ldflags = substr( $ARGV[0], 9 ) ;
# multiple options separated by spaces are passed in from sh script
# separated by ! instead. Replace with spaces here.
    $sw_ldflags =~ s/!/ /g ;
  }
  if ( substr( $ARGV[0], 1, 13 ) eq "compileflags=" )
  {
    $sw_compileflags = substr( $ARGV[0], 14 ) ;
    $sw_compileflags =~ s/!/ /g ;
#   look for each known option
    $where_index = index ( $sw_compileflags , "-DWRF_CHEM" ) ;
    if ( $where_index eq -1 ) 
    {
      $WRFCHEM = 0 ;
    }
    else
    {
      $WRFCHEM = 1 ;
    } 
  }
  shift @ARGV ;
 }

# No longer really true - JASPER is linked in like a normal library.
#
# if ( $ENV{JASPERLIB} && $ENV{JASPERINC} )
#   {
#   printf "Configuring to use jasper library to build Grib2 I/O...\n" ;
#   printf("  \$JASPERLIB = %s\n",$ENV{JASPERLIB});
#   printf("  \$JASPERINC = %s\n",$ENV{JASPERINC});
#   $sw_jasperlib_path = $ENV{JASPERLIB}; 
#   $sw_jasperinc_path = $ENV{JASPERINC}; 
#   }
# else
#   {
#   printf "\$JASPERLIB or \$JASPERINC not found in environment, configuring to build without grib2 I/O...\n" ;
#   }

# A separately-installed ESMF library is required to build the ESMF 
# implementation of WRF IOAPI in external/io_esmf.  This is needed 
# to couple WRF with other ESMF components.  User must set environment 
# variables ESMFLIB and ESMFINC to paths ESMF to library and include 
# files to enable this feature prior to running configure.
 if ( $ENV{ESMFLIB} && $ENV{ESMFINC} )
   {
   printf "Configuring to use ESMF library to build WRF...\n" ;
   printf "WARNING-WARNING-WARNING-WARNING-WARNING-WARNING-WARNING-WARNING\n" ;
   printf "WARNING:  THIS IS AN EXPERIMENTAL CONFIGURATION\n" ;
   printf "WARNING:  IT DOES NOT WORK WITH NESTING\n" ;
   printf "WARNING-WARNING-WARNING-WARNING-WARNING-WARNING-WARNING-WARNING\n" ;
   printf("  \$ESMFLIB = %s\n",$ENV{ESMFLIB});
   printf("  \$ESMFINC = %s\n",$ENV{ESMFINC});
   $sw_esmflib_path = $ENV{ESMFLIB};
   $sw_esmfinc_path = $ENV{ESMFINC};
   }

# parse the configure.nps file

$validresponse = 0 ;

# Display the choices to the user and get selection
until ( $validresponse ) {
  printf "------------------------------------------------------------------------\n" ;
  printf "Please select from among the following supported platforms.\n\n" ;

  $opt = 1 ;
  open CONFIGURE_DEFAULTS, "< ./arch/configure.defaults" 
      or die "Cannot open ./arch/configure.defaults for reading" ;
  while ( <CONFIGURE_DEFAULTS> )
  {
    if ( substr( $_, 0, 5 ) eq "#ARCH" && ( index( $_, $sw_os ) >= 0 ) && ( index( $_, $sw_mach ) >= 0 ) )
    {
      $optstr[$opt] = substr($_,6) ;
      $optstr[$opt] =~ s/^[ 	]*// ;
      if ( substr( $optstr[$opt], 0,4 ) ne "NULL" )
      {
        printf "  %2d.  %s",$opt,$optstr[$opt] ;
        $opt++ ;
      }
    }
  }
  close CONFIGURE_DEFAULTS ;

  $opt -- ;

  printf "\nEnter selection [%d-%d] : ",1,$opt ;
#  $response = <STDIN> ;

# user input hard-coded to 2
  $response = 2 ;

  if ( $response == -1 ) { exit ; }

  if ( $response >= 1 && $response <= $opt ) 
  { $validresponse = 1 ; }
  else
  { printf("\nInvalid response (%d)\n",$response);}
}
printf "------------------------------------------------------------------------\n" ;

$optchoice = $response ;

open CONFIGURE_DEFAULTS, "< ./arch/configure.defaults" 
      or die "Cannot open ./arch/configure.defaults for reading" ;
$latchon = 0 ;
while ( <CONFIGURE_DEFAULTS> )
{
  if ( substr( $_, 0, 5 ) eq "#ARCH" && $latchon == 1 )
  {
    $latchon = 0 ;
  }
  if ( $latchon == 1 )
  {
    $_ =~ s/CONFIGURE_PERL_PATH/$sw_perl_path/g ;
    $_ =~ s/CONFIGURE_NETCDF_PATH/$sw_netcdf_path/g ;
    $_ =~ s/CONFIGURE_PHDF5_PATH/$sw_phdf5_path/g ;
    $_ =~ s/CONFIGURE_LDFLAGS/$sw_ldflags/g ;
    $_ =~ s/CONFIGURE_COMPILEFLAGS/$sw_compileflags/g ;
    if ( $sw_netcdf_path ) 
      { $_ =~ s/CONFIGURE_WRFIO_NF/wrfio_nf/g ;
	$_ =~ s:CONFIGURE_NETCDF_FLAG:-DNETCDF: ;
	$_ =~ s:CONFIGURE_NETCDF_LIB_PATH:-L../external/io_netcdf -lwrfio_nf -L$sw_netcdf_path/lib -lnetcdf: ;
	 }
    else                   
      { $_ =~ s/CONFIGURE_WRFIO_NF//g ;
	$_ =~ s:CONFIGURE_NETCDF_FLAG::g ;
	$_ =~ s:CONFIGURE_NETCDF_LIB_PATH::g ;
	 }

    if ( $sw_phdf5_path ) 

      { $_ =~ s/CONFIGURE_WRFIO_PHDF5/wrfio_phdf5/g ;
	$_ =~ s:CONFIGURE_PHDF5_FLAG:-DPHDF5: ;
	$_ =~ s:CONFIGURE_PHDF5_LIB_PATH:-L../external/io_phdf5 -lwrfio_phdf5 -L$sw_phdf5_path/lib -lhdf5_fortran -lhdf5 -lm -lz -L$sw_phdf5_path/lib -lsz: ;
	 }
    else                   
      { $_ =~ s/CONFIGURE_WRFIO_PHDF5//g ;
	$_ =~ s:CONFIGURE_PHDF5_FLAG::g ;
	$_ =~ s:CONFIGURE_PHDF5_LIB_PATH::g ;
	 }

    if ( $sw_jasperlib_path && $sw_jasperinc_path ) 
      { $_ =~ s/CONFIGURE_WRFIO_GRIB2/wrfio_grib2/g ;
        $_ =~ s:CONFIGURE_GRIB2_FLAG:-DGRIB2:g ;
        $_ =~ s:CONFIGURE_GRIB2_INC:-I$sw_jasperinc_path:g ;
        $_ =~ s:CONFIGURE_GRIB2_LIB:-L../external/io_grib2 -lio_grib2 -L$sw_jasperlib_path -ljasper:g ;
      }
    else                   
      { $_ =~ s/CONFIGURE_WRFIO_GRIB2//g ;
        $_ =~ s:CONFIGURE_GRIB2_FLAG::g ;
        $_ =~ s:CONFIGURE_GRIB2_INC::g ;
        $_ =~ s:CONFIGURE_GRIB2_LIB::g ;
      }


    # ESMF substitutions in configure.defaults
    if ( $sw_esmflib_path && $sw_esmfinc_path )
      {
      $_ =~ s:ESMFIOLIB:-L$sw_esmflib_path -lesmf -L../external/io_esmf -lwrfio_esmf \$\(ESMF_LIB_FLAGS\):g ;
      $_ =~ s:ESMFIOEXTLIB:-L$sw_esmflib_path -lesmf -L../../external/io_esmf -lwrfio_esmf \$\(ESMF_LIB_FLAGS\):g ;
      }
    else
      {
      $_ =~ s:ESMFIOLIB:-L../external/esmf_time_f90 -lesmf_time:g ;
      $_ =~ s:ESMFIOEXTLIB:-L../../external/esmf_time_f90 -lesmf_time:g ;
      }

    @machopts = ( @machopts, $_ ) ;
    if ( substr( $_, 0, 10 ) eq "ENVCOMPDEF" )
    {
      @machopts = ( @machopts, "WRF_CHEM\t=\t$WRFCHEM \n" ) ;
    }
  }
  if ( substr( $_, 0, 5 ) eq "#ARCH" && $latchon == 0 )
  {
    $x=substr($_,6) ;
    $x=~s/^[     ]*// ;
    if ( $x eq $optstr[$optchoice] )
    {
      $latchon = 1 ;
    }
  }
}
close CONFIGURE_DEFAULTS ;

#printf "------------------------------------------------------------------------\n" ;
#foreach $f ( @machopts )
#{
#  if ( substr( $f , 0 , 8 ) eq "external" ) { last ; }
#  print $f ;
#}
#printf "------------------------------------------------------------------------\n" ;
#printf "\nYou have chosen: %s",$optstr[$optchoice] ;
#printf "Listed above are the default options for this platform.\n" ;
#printf "Settings are written to the file configure.nps here in the top-level\n" ;
#printf "directory.  If you wish to change settings, please edit that file.\n" ;
#printf "If you wish to change the default options, edit the file:\n\n" ;
#printf "     arch/configure.defaults\n" ;
#printf "\n" ;

open CONFIGURE_WRF, "> configure.nps" or die "cannot append configure.nps" ;
open ARCH_PREAMBLE, "< arch/preamble" or die "cannot open arch/preamble - NEED TO RUN conf script FIRST - " ;
my @preamble;
# apply substitutions to the preamble...
while ( <ARCH_PREAMBLE> )
  {
  # ESMF substitutions in preamble
  if ( $sw_esmflib_path && $sw_esmfinc_path )
    {
    $_ =~ s/ESMFCOUPLING/1/g ;
    $_ =~ s:ESMFMODDEPENDENCE:../external/io_esmf/module_utility.o:g ;
    $_ =~ s:ESMFMODINC:-I$sw_esmfinc_path -I../main:g ;
    $_ =~ s:ESMFIOINC:-I../external/io_esmf:g ;
    $_ =~ s:ESMFIODEFS:-DESMFIO:g ;
    $_ =~ s:ESMFTARGET:wrfio_esmf:g ;
    }
  else
    {
    $_ =~ s/ESMFCOUPLING/0/g ;
    $_ =~ s:ESMFMODDEPENDENCE:../external/esmf_time_f90/module_utility.o:g ;
    $_ =~ s:ESMFMODINC::g ;
    $_ =~ s:ESMFIOINC:-I../external/esmf_time_f90:g ;
    $_ =~ s:ESMFIODEFS::g ;
    $_ =~ s:ESMFTARGET:esmf_time:g ;
    }
  @preamble = ( @preamble, $_ ) ;
  }
close ARCH_PREAMBLE ;
print CONFIGURE_WRF @preamble  ;
close ARCH_PREAMBLE ;
printf CONFIGURE_WRF "# Settings for %s", $optstr[$optchoice] ;
print CONFIGURE_WRF @machopts  ;
open ARCH_POSTAMBLE, "< arch/postamble" or die "cannot open arch/postamble" ;
while ( <ARCH_POSTAMBLE> ) { print CONFIGURE_WRF } ;
close ARCH_POSTAMBLE ;
close CONFIGURE_WRF ;

printf "Configuration successful. To build the NPS, type: compile \n" ;
printf "------------------------------------------------------------------------\n" ;


