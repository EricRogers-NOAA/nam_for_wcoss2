  &   L   k820309    w          19.1        N�ea                                                                                                          
       /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/cplr_regional_io.f90 REGIONAL_IO_MOD                                                     
       #         @                                       	               #THIS              
                                    H               #ABSTRACT_REGIONAL_IO_CLASS    #         @                                       	               #THIS    #MYPE              
                                    H               #ABSTRACT_REGIONAL_IO_CLASS              
                                           #         @                                       	               #THIS 	   #MYPE 
   #CTPH0    #STPH0    #TLM0              
                               	     H               #ABSTRACT_REGIONAL_IO_CLASS              
                                
                                                         
                                                     
                                                     
                                                                                    
       0 L            1275069488                                                                             
       ) L            1275070505                                                                             
          D            1140850688                                                                             
          D            1140850688                                                                           
       ' L            1275069479                                                                           
       ) L            1275070505                                                                           
       0 L            1275069488                                                                           
       + L            1275072555                                                                                                 5                                                                           
         X            1476395011                                                                           
        L            1275069467                                                                           
       - L            1275068717                                                                           
       / L            1275068975                                                                           
       1 L            1275070513                                                                           
         X            1476395009                                                                           
         X            1476395010                                                                                                 8                                                                           	                      469762048                                                                                                  2                                           !                                                      1                                           "                                                      4                                           #                                                      8                                           $                                
        L            1275068685                                           %                                
          D            1140850688                  @               �          &     'H                    #ABSTRACT_REGIONAL_IO_CLASS '   #INIT_REGIONAL_IO ,   #WRITE_REGIONAL_ANALYSIS /   #CONVERT_REGIONAL_GUESS <                �                               '     H                      #ABSTRACT_REGIONAL_IO_CLASS                      @               @               'H                    #DUMMY (   #INIT_REGIONAL_IO )   #WRITE_REGIONAL_ANALYSIS *   #CONVERT_REGIONAL_GUESS +              �                               (                                          &                                           1         �   �                       �     )                  #INIT_REGIONAL_IO    1         �   �                       �     *                  #WRITE_REGIONAL_ANALYSIS    1         �   �                       �     +                  #CONVERT_REGIONAL_GUESS    1         �   �                       �     ,                  #INIT_REGIONAL_IO_WRF -   #         @                                   -                    #THIS .             
                                .     H               #REGIONAL_IO_CLASS &   1         �   �                       �     /                  #WRITE_REGIONAL_ANALYSIS_WRF 0   #         @                                   0     	              #WRITE_REGIONAL_ANALYSIS_WRF%NLON 1   #WRITE_REGIONAL_ANALYSIS_WRF%NLAT 2   #WRITE_REGIONAL_ANALYSIS_WRF%NSIG 3   #WRITE_REGIONAL_ANALYSIS_WRF%LON1 4   #WRITE_REGIONAL_ANALYSIS_WRF%LAT1 5   #WRITE_REGIONAL_ANALYSIS_WRF%LON2 6   #WRITE_REGIONAL_ANALYSIS_WRF%LAT2 7   #WRITE_REGIONAL_ANALYSIS_WRF%ITOTSUB 8   #WRITE_REGIONAL_ANALYSIS_WRF%IGLOBAL 9   #THIS :   #MYPE ;                                                                                    1                                                     2                                                     3                                                     4                                                     5                                                     6                                                     7                                                     8                                                     9                      
                                :     H               #REGIONAL_IO_CLASS &             
@ @                              ;           1         �   �                       �     <                  #CONVERT_REGIONAL_GUESS_WRF =   #         @                                   =     	              #CONVERT_REGIONAL_GUESS_WRF%NLON >   #CONVERT_REGIONAL_GUESS_WRF%NLAT ?   #CONVERT_REGIONAL_GUESS_WRF%NSIG @   #CONVERT_REGIONAL_GUESS_WRF%LON1 A   #CONVERT_REGIONAL_GUESS_WRF%LAT1 B   #CONVERT_REGIONAL_GUESS_WRF%LON2 C   #CONVERT_REGIONAL_GUESS_WRF%LAT2 D   #CONVERT_REGIONAL_GUESS_WRF%ITOTSUB E   #CONVERT_REGIONAL_GUESS_WRF%IGLOBAL F   #THIS G   #MYPE H   #CTPH0 I   #STPH0 J   #TLM0 K                                                                                                                          >                                                     ?                                                     @                                                     A                                                     B                                                     C                                                     D                                                     E                                                     F                      
                                G     H               #REGIONAL_IO_CLASS &             
                                 H                     D @                              I     
                 D @                              J     
                 D @                              K     
          �   x      fn#fn )     @   J   ABSTRACT_REGIONAL_IO_MOD :   X  R       INIT_REGIONAL_IO+ABSTRACT_REGIONAL_IO_MOD ?   �  h   a   INIT_REGIONAL_IO%THIS+ABSTRACT_REGIONAL_IO_MOD A     \       WRITE_REGIONAL_ANALYSIS+ABSTRACT_REGIONAL_IO_MOD F   n  h   a   WRITE_REGIONAL_ANALYSIS%THIS+ABSTRACT_REGIONAL_IO_MOD F   �  @   a   WRITE_REGIONAL_ANALYSIS%MYPE+ABSTRACT_REGIONAL_IO_MOD @     |       CONVERT_REGIONAL_GUESS+ABSTRACT_REGIONAL_IO_MOD E   �  h   a   CONVERT_REGIONAL_GUESS%THIS+ABSTRACT_REGIONAL_IO_MOD E   �  @   a   CONVERT_REGIONAL_GUESS%MYPE+ABSTRACT_REGIONAL_IO_MOD F   :  @   a   CONVERT_REGIONAL_GUESS%CTPH0+ABSTRACT_REGIONAL_IO_MOD F   z  @   a   CONVERT_REGIONAL_GUESS%STPH0+ABSTRACT_REGIONAL_IO_MOD E   �  @   a   CONVERT_REGIONAL_GUESS%TLM0+ABSTRACT_REGIONAL_IO_MOD '   �  z       MPI_INTEGER4+MPEU_MPIF .   t  z       MPI_RTYPE+MPEU_MPIF=MPI_REAL8 )   �  z       MPI_COMM_WORLD+MPEU_MPIF )   h  z       MPI_COMM_WORLD+MPEU_MPIF $   �  z       MPI_REAL4+MPEU_MPIF $   \  z       MPI_REAL8+MPEU_MPIF '   �  z       MPI_INTEGER4+MPEU_MPIF %   P  z       MPI_REAL16+MPEU_MPIF *   �  q       MPI_STATUS_SIZE+MPEU_MPIF "   ;	  z       MPI_SUM+MPEU_MPIF &   �	  z       MPI_INTEGER+MPEU_MPIF '   /
  z       MPI_INTEGER1+MPEU_MPIF '   �
  z       MPI_INTEGER2+MPEU_MPIF '   #  z       MPI_INTEGER8+MPEU_MPIF "   �  z       MPI_MAX+MPEU_MPIF "     z       MPI_MIN+MPEU_MPIF *   �  q       MPI_OFFSET_KIND+MPEU_MPIF (     y       MPI_INFO_NULL+MPEU_MPIF *   {  q       MPI_MODE_RDONLY+MPEU_MPIF *   �  q       MPI_MODE_CREATE+MPEU_MPIF *   ]  q       MPI_MODE_WRONLY+MPEU_MPIF (   �  q       MPI_MODE_RDWR+MPEU_MPIF #   ?  z       MPI_BYTE+MPEU_MPIF )   �  z       MPI_COMM_WORLD+MPEU_MPIF "   3  �       REGIONAL_IO_CLASS =   �  p   a   REGIONAL_IO_CLASS%ABSTRACT_REGIONAL_IO_CLASS D   b  �       ABSTRACT_REGIONAL_IO_CLASS+ABSTRACT_REGIONAL_IO_MOD J     �   a   ABSTRACT_REGIONAL_IO_CLASS%DUMMY+ABSTRACT_REGIONAL_IO_MOD U   �  ^   a   ABSTRACT_REGIONAL_IO_CLASS%INIT_REGIONAL_IO+ABSTRACT_REGIONAL_IO_MOD \   �  e   a   ABSTRACT_REGIONAL_IO_CLASS%WRITE_REGIONAL_ANALYSIS+ABSTRACT_REGIONAL_IO_MOD [   c  d   a   ABSTRACT_REGIONAL_IO_CLASS%CONVERT_REGIONAL_GUESS+ABSTRACT_REGIONAL_IO_MOD 3   �  b   a   REGIONAL_IO_CLASS%INIT_REGIONAL_IO %   )  R       INIT_REGIONAL_IO_WRF *   {  _   a   INIT_REGIONAL_IO_WRF%THIS :   �  i   a   REGIONAL_IO_CLASS%WRITE_REGIONAL_ANALYSIS ,   C  �      WRITE_REGIONAL_ANALYSIS_WRF >   #  @     WRITE_REGIONAL_ANALYSIS_WRF%NLON+GRIDMOD=NLON >   c  @     WRITE_REGIONAL_ANALYSIS_WRF%NLAT+GRIDMOD=NLAT >   �  @     WRITE_REGIONAL_ANALYSIS_WRF%NSIG+GRIDMOD=NSIG >   �  @     WRITE_REGIONAL_ANALYSIS_WRF%LON1+GRIDMOD=LON1 >   #  @     WRITE_REGIONAL_ANALYSIS_WRF%LAT1+GRIDMOD=LAT1 >   c  @     WRITE_REGIONAL_ANALYSIS_WRF%LON2+GRIDMOD=LON2 >   �  @     WRITE_REGIONAL_ANALYSIS_WRF%LAT2+GRIDMOD=LAT2 D   �  @     WRITE_REGIONAL_ANALYSIS_WRF%ITOTSUB+GRIDMOD=ITOTSUB D   #  @     WRITE_REGIONAL_ANALYSIS_WRF%IGLOBAL+GRIDMOD=IGLOBAL 1   c  _   a   WRITE_REGIONAL_ANALYSIS_WRF%THIS 1   �  @   a   WRITE_REGIONAL_ANALYSIS_WRF%MYPE 9     h   a   REGIONAL_IO_CLASS%CONVERT_REGIONAL_GUESS +   j        CONVERT_REGIONAL_GUESS_WRF =   �  @     CONVERT_REGIONAL_GUESS_WRF%NLON+GRIDMOD=NLON =   �  @     CONVERT_REGIONAL_GUESS_WRF%NLAT+GRIDMOD=NLAT =     @     CONVERT_REGIONAL_GUESS_WRF%NSIG+GRIDMOD=NSIG =   G  @     CONVERT_REGIONAL_GUESS_WRF%LON1+GRIDMOD=LON1 =   �  @     CONVERT_REGIONAL_GUESS_WRF%LAT1+GRIDMOD=LAT1 =   �  @     CONVERT_REGIONAL_GUESS_WRF%LON2+GRIDMOD=LON2 =     @     CONVERT_REGIONAL_GUESS_WRF%LAT2+GRIDMOD=LAT2 C   G  @     CONVERT_REGIONAL_GUESS_WRF%ITOTSUB+GRIDMOD=ITOTSUB C   �  @     CONVERT_REGIONAL_GUESS_WRF%IGLOBAL+GRIDMOD=IGLOBAL 0   �  _   a   CONVERT_REGIONAL_GUESS_WRF%THIS 0   &  @   a   CONVERT_REGIONAL_GUESS_WRF%MYPE 1   f  @   a   CONVERT_REGIONAL_GUESS_WRF%CTPH0 1   �  @   a   CONVERT_REGIONAL_GUESS_WRF%STPH0 0   �  @   a   CONVERT_REGIONAL_GUESS_WRF%TLM0 