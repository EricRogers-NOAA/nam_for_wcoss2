  ?L  �   k820309    w          19.1        �ea                                                                                                          
       /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/obsmod.F90 OBSMOD       �       INIT_OBSMOD_DFLTS INIT_DIRECTORIES CREATE_OBSMOD_VARS INIT_OBSMOD_VARS DESTROY_OBSMOD_VARS RAN01DOM DVAL_USE IOUT_PCP IOUT_RAD IADATE IADATEMN WRITE_DIAG REDUCE_DIAG OBERRFLG BFLAG NDAT DTHIN DMESH L_DO_ADJOINT DIAG_RADARDBZ LSAVEOBSENS IOUT_CLDCH MYPE_CLDCH NPROF_GPS TIME_OFFSET IANLDATE IOUT_OZ IOUT_CO DSIS REF_OBS OBSFILE_ALL LOBSERVER PERTURB_OBS DITYPE DSFCALC DPLAT TIME_WINDOW DVAL DTYPE DFILE DIRNAME OBS_SETUP OBERROR_TUNE OFFTIME_DATA LOBSDIAGSAVE LOBSDIAG_FORENKF BLACKLST HILBERT_CURVE LOBSKEEP TIME_WINDOW_MAX SFCMODEL EXT_SONDE NEUTRAL_STABILITY_WINDFACT_2DVAR USE_SIMILARITY_2DVAR TIME_WINDOW_RAD PERTURB_FACT DTBDUV_ON NSAT1 OBS_SUB_COMM MYPE_DIAGHDR LOBSDIAG_ALLOCATED NLOZ_V8 NLOZ_V6 NLOZ_OMI NLCO NOBSKEEP RMISS_SINGLE NCHAN_TOTAL MYPE_SST MYPE_GPS MYPE_UV MYPE_DW MYPE_RW MYPE_Q MYPE_TCP MYPE_LAG MYPE_PS MYPE_T MYPE_PW IOUT_RW IOUT_DW IOUT_SST IOUT_PW IOUT_T IOUT_Q IOUT_TCP IOUT_LAG IOUT_UV IOUT_GPS IOUT_PS IOUT_LIGHT MYPE_LIGHT MYPE_GUST MYPE_VIS MYPE_PBLH IOUT_GUST IOUT_VIS IOUT_PBLH MYPE_TCAMT MYPE_LCBAS IOUT_TCAMT IOUT_LCBAS MYPE_WSPD10M MYPE_TD2M IOUT_WSPD10M IOUT_TD2M MYPE_UWND10M MYPE_VWND10M IOUT_UWND10M IOUT_VWND10M MYPE_MXTM MYPE_MITM IOUT_MXTM IOUT_MITM MYPE_PMSL MYPE_HOWV IOUT_PMSL IOUT_HOWV MYPE_SWCP MYPE_LWCP IOUT_SWCP IOUT_LWCP LREAD_OBS_SAVE OBS_INPUT_COMMON LREAD_OBS_SKIP NDAT_TIMES LWRITE_PREDTERMS LWRITE_PEAKWT BMISS MYPE_AERO IOUT_AERO NLAERO MYPE_PM2_5 IOUT_PM2_5 MYPE_PM10 IOUT_PM10 USE_LIMIT LRUN_SUBDIRS L_FOREAFT_THIN LUSE_OBSDIAG NTILT_RADARFILES WHICHRADAR VR_DEALISINGOPT IF_VTERMINAL IF_MODEL_DBZ INFLATE_OBSERR IF_VROBS_RAW DORADARONEOB ONEOBLAT ONEOBLON ONEOBDDIFF ONEOBVALUE ONEOBHEIGHT ONEOBRADID ENS_HX_DBZ_CUT STATIC_GSI_NOPCP_DBZ RMESH_DBZ ZMESH_DBZ RMESH_VR ZMESH_VR RADAR_NO_THINNING MINTILTVR MAXTILTVR MINOBRANGEVR MAXOBRANGEVR MINTILTDBZ MAXTILTDBZ MINOBRANGEDBZ MAXOBRANGEDBZ DEBUGMODE MISSING_TO_NOPCP IOUT_DBZ MYPE_DBZ NOBS_SUB NETCDF_DIAG BINARY_DIAG L_WCP_CWM AIRCRAFT_RECON Q_DOE_A_136 Q_DOE_A_137 Q_DOE_B_136 Q_DOE_B_137 T_DOE_A_136 T_DOE_A_137 T_DOE_B_136 T_DOE_B_137 UV_DOE_A_236 UV_DOE_A_237 UV_DOE_A_292 UV_DOE_B_236 UV_DOE_B_237 UV_DOE_B_292 gen@OBSMOD_INIT_INSTR_TABLE gen@OBSMOD_FINAL_INSTR_TABLE gen@DESTROYOBS                      @                              
       R_KIND I_KIND R_SINGLE                      @                              
       L4DVAR LSQRTB LBICG                      @                              
       ZERO ONE TWO THREE FOUR FIVE                      @                              
       MPI_MAX MPI_ITYPE MPI_COMM_WORLD IERROR NPE MYPE                                                        u #INIT_INSTR_TABLE_    #         @     @X                                  	              #INIT_INSTR_TABLE_%NLON    #INIT_INSTR_TABLE_%NLAT    #INIT_INSTR_TABLE_%NSIG    #INIT_INSTR_TABLE_%LON1 	   #INIT_INSTR_TABLE_%LAT1 
   #INIT_INSTR_TABLE_%LON2    #INIT_INSTR_TABLE_%LAT2    #INIT_INSTR_TABLE_%ITOTSUB    #INIT_INSTR_TABLE_%IGLOBAL    #NHR_ASSIM    #NALL    #IAMROOT    #RCNAME                                                                                                                                                                                                                                                 	                                                     
                                                                                                                                                                                                                                          
                                                      D                                                      
 @                                                    
 @                                                 1                                                        u #FINAL_INSTR_TABLE_    #         @     @X                                                                                                         u #DESTROYOBS_    #         @     @X                                                  #         @                                                        #         @                                                       #MYPE              
                                            #         @                                                        #         @                                        	              #INIT_OBSMOD_VARS%NLON    #INIT_OBSMOD_VARS%NLAT    #INIT_OBSMOD_VARS%NSIG    #INIT_OBSMOD_VARS%LON1    #INIT_OBSMOD_VARS%LAT1    #INIT_OBSMOD_VARS%LON2    #INIT_OBSMOD_VARS%LAT2     #INIT_OBSMOD_VARS%ITOTSUB !   #INIT_OBSMOD_VARS%IGLOBAL "   #NHR_ASSIM #   #MYPE $                                                                                                                                                                                                                                                                                                                                                                                                                                !                                                     "                      
                                 #                     
                                 $           #         @                                   %                     %         @                                &                     
                                     @                                 '                       @                                (                       @                                )                                                        *                         p          p            p                                                                      +                         p          p            p                                     @     �                            ,     3                    p           & p         p 2           p 3                                    @                                 -                       @                                 .                       @                                 /                                                        0                     @ @                              1                                   &                                                                                       2     2              
      p          p 2           p 2                                    @                                 3                       @                                 4                       @                                 5                       @                                6                       @                                7                       @                                8                                                        9     
                                                   :                       @                                ;                       @                                <            +         @ @                              =                                   &                                                                                                >            +         @ @                              ?                                   &                                                              @                                 @                       @                                 A            +         @ @                              B            
                       &                                                            @ @                              C                                   &                                           +         @ @                              D            
                       &                                                            @ @                              E                   
                &                                                    @ @                              F                   
                &                                           +         @ @                              G            
                       &                                                   +         @ @                              H            x                       &                                                              @ @                               I     �                                                    J     �                  @                                 K                       @                                 L                       @                                 M                       @                                 N                       @                                 O                       @                                 P                       @                                 Q                       @                                R     
                  @                                 S                       @                                 T                       @                                 U                       @                                 V                       @                                W     
                  @                                X     
                  @                                 Y                     @                                Z                                   &                                                    @                                [                                   &                                                    @                                \                                   &                                                      @                                 ]                       @                                ^                       @                                _                       @                                `                       @                                a                       @                                b                                                        c     	                   	                   �y�                                                        d                       @                                e                       @                                f                       @                                g                       @                                h                       @                                i                       @                                j                       @                                k                       @                                l                       @                                m                       @                                n                       @                                o                       @                                p                       @                                q                       @                                r                       @                                s                       @                                t                       @                                u                       @                                v                       @                                w                       @                                x                       @                                y                       @                                z                       @                                {                       @                                |                       @                                }                       @                                ~                       @                                                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                 �                       @                                 �     �                  @                                 �                       @                                �                       @                                 �                       @                                 �                                                        �     
                
                     e��A        1.0E9           @                                �                       @                                �                                                        �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                 �                       @                                 �                       @                                 �                       @                                �                       @                                �                       @                                 �                       @                                 �                       @                                 �                       @                                 �                       @                                 �                       @                                 �                       @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �                       @                                 �                       @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                 �                       @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                 �                       @                                 �                       @                                �                       @                                �                     @ @                              �                                   &                   &                                                      @                                 �                       @                                 �                       @                                 �                       @                                 �                       @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
                  @                                �     
          �   e      fn#fn      �  b   uapp(OBSMOD    �	  W   J  KINDS    
  T   J  GSI_4DVAR    X
  ]   J  CONSTANTS    �
  q   J  MPIMOD ,   &  W       gen@OBSMOD_INIT_INSTR_TABLE "   }  �     INIT_INSTR_TABLE_ 4     @     INIT_INSTR_TABLE_%NLON+GRIDMOD=NLON 4   ^  @     INIT_INSTR_TABLE_%NLAT+GRIDMOD=NLAT 4   �  @     INIT_INSTR_TABLE_%NSIG+GRIDMOD=NSIG 4   �  @     INIT_INSTR_TABLE_%LON1+GRIDMOD=LON1 4     @     INIT_INSTR_TABLE_%LAT1+GRIDMOD=LAT1 4   ^  @     INIT_INSTR_TABLE_%LON2+GRIDMOD=LON2 4   �  @     INIT_INSTR_TABLE_%LAT2+GRIDMOD=LAT2 :   �  @     INIT_INSTR_TABLE_%ITOTSUB+GRIDMOD=ITOTSUB :     @     INIT_INSTR_TABLE_%IGLOBAL+GRIDMOD=IGLOBAL ,   ^  @   a   INIT_INSTR_TABLE_%NHR_ASSIM '   �  @   a   INIT_INSTR_TABLE_%NALL *   �  @   a   INIT_INSTR_TABLE_%IAMROOT )     L   a   INIT_INSTR_TABLE_%RCNAME -   j  X       gen@OBSMOD_FINAL_INSTR_TABLE #   �  H      FINAL_INSTR_TABLE_    
  Q       gen@DESTROYOBS    [  H      DESTROYOBS_ "   �  H       INIT_OBSMOD_DFLTS !   �  R       INIT_DIRECTORIES &   =  @   a   INIT_DIRECTORIES%MYPE #   }  H       CREATE_OBSMOD_VARS !   �  Z      INIT_OBSMOD_VARS 3     @     INIT_OBSMOD_VARS%NLON+GRIDMOD=NLON 3   _  @     INIT_OBSMOD_VARS%NLAT+GRIDMOD=NLAT 3   �  @     INIT_OBSMOD_VARS%NSIG+GRIDMOD=NSIG 3   �  @     INIT_OBSMOD_VARS%LON1+GRIDMOD=LON1 3     @     INIT_OBSMOD_VARS%LAT1+GRIDMOD=LAT1 3   _  @     INIT_OBSMOD_VARS%LON2+GRIDMOD=LON2 3   �  @     INIT_OBSMOD_VARS%LAT2+GRIDMOD=LAT2 9   �  @     INIT_OBSMOD_VARS%ITOTSUB+GRIDMOD=ITOTSUB 9     @     INIT_OBSMOD_VARS%IGLOBAL+GRIDMOD=IGLOBAL +   _  @   a   INIT_OBSMOD_VARS%NHR_ASSIM &   �  @   a   INIT_OBSMOD_VARS%MYPE $   �  H       DESTROY_OBSMOD_VARS    '  c       RAN01DOM    �  @       DVAL_USE    �  @       IOUT_PCP    
  @       IOUT_RAD    J  �       IADATE    �  �       IADATEMN    r  �       WRITE_DIAG      @       REDUCE_DIAG    V  @       OBERRFLG    �  @       BFLAG    �  @       NDAT      �       DTHIN    �  �       DMESH    6  @       L_DO_ADJOINT    v  @       DIAG_RADARDBZ    �  @       LSAVEOBSENS    �  @       IOUT_CLDCH    6  @       MYPE_CLDCH    v  @       NPROF_GPS    �  @       TIME_OFFSET    �  @       IANLDATE    6  @       IOUT_OZ    v  @       IOUT_CO    �  �       DSIS    J  @       REF_OBS    �  �       OBSFILE_ALL       @       LOBSERVER    ^   @       PERTURB_OBS    �   �       DITYPE    2!  �       DSFCALC    �!  �       DPLAT    R"  �       TIME_WINDOW    �"  �       DVAL    j#  �       DTYPE    �#  �       DFILE    �$  @       DIRNAME    �$  @       OBS_SETUP    %  @       OBERROR_TUNE    R%  @       OFFTIME_DATA    �%  @       LOBSDIAGSAVE !   �%  @       LOBSDIAG_FORENKF    &  @       BLACKLST    R&  @       HILBERT_CURVE    �&  @       LOBSKEEP     �&  @       TIME_WINDOW_MAX    '  @       SFCMODEL    R'  @       EXT_SONDE 1   �'  @       NEUTRAL_STABILITY_WINDFACT_2DVAR %   �'  @       USE_SIMILARITY_2DVAR     (  @       TIME_WINDOW_RAD    R(  @       PERTURB_FACT    �(  @       DTBDUV_ON    �(  �       NSAT1    ^)  �       OBS_SUB_COMM    �)  �       MYPE_DIAGHDR #   v*  @       LOBSDIAG_ALLOCATED    �*  @       NLOZ_V8    �*  @       NLOZ_V6    6+  @       NLOZ_OMI    v+  @       NLCO    �+  @       NOBSKEEP    �+  p       RMISS_SINGLE    f,  @       NCHAN_TOTAL    �,  @       MYPE_SST    �,  @       MYPE_GPS    &-  @       MYPE_UV    f-  @       MYPE_DW    �-  @       MYPE_RW    �-  @       MYPE_Q    &.  @       MYPE_TCP    f.  @       MYPE_LAG    �.  @       MYPE_PS    �.  @       MYPE_T    &/  @       MYPE_PW    f/  @       IOUT_RW    �/  @       IOUT_DW    �/  @       IOUT_SST    &0  @       IOUT_PW    f0  @       IOUT_T    �0  @       IOUT_Q    �0  @       IOUT_TCP    &1  @       IOUT_LAG    f1  @       IOUT_UV    �1  @       IOUT_GPS    �1  @       IOUT_PS    &2  @       IOUT_LIGHT    f2  @       MYPE_LIGHT    �2  @       MYPE_GUST    �2  @       MYPE_VIS    &3  @       MYPE_PBLH    f3  @       IOUT_GUST    �3  @       IOUT_VIS    �3  @       IOUT_PBLH    &4  @       MYPE_TCAMT    f4  @       MYPE_LCBAS    �4  @       IOUT_TCAMT    �4  @       IOUT_LCBAS    &5  @       MYPE_WSPD10M    f5  @       MYPE_TD2M    �5  @       IOUT_WSPD10M    �5  @       IOUT_TD2M    &6  @       MYPE_UWND10M    f6  @       MYPE_VWND10M    �6  @       IOUT_UWND10M    �6  @       IOUT_VWND10M    &7  @       MYPE_MXTM    f7  @       MYPE_MITM    �7  @       IOUT_MXTM    �7  @       IOUT_MITM    &8  @       MYPE_PMSL    f8  @       MYPE_HOWV    �8  @       IOUT_PMSL    �8  @       IOUT_HOWV    &9  @       MYPE_SWCP    f9  @       MYPE_LWCP    �9  @       IOUT_SWCP    �9  @       IOUT_LWCP    &:  @       LREAD_OBS_SAVE !   f:  @       OBS_INPUT_COMMON    �:  @       LREAD_OBS_SKIP    �:  @       NDAT_TIMES !   &;  @       LWRITE_PREDTERMS    f;  @       LWRITE_PEAKWT    �;  u       BMISS    <  @       MYPE_AERO    [<  @       IOUT_AERO    �<  @       NLAERO    �<  @       MYPE_PM2_5    =  @       IOUT_PM2_5    [=  @       MYPE_PM10    �=  @       IOUT_PM10    �=  @       USE_LIMIT    >  @       LRUN_SUBDIRS    [>  @       L_FOREAFT_THIN    �>  @       LUSE_OBSDIAG !   �>  @       NTILT_RADARFILES    ?  @       WHICHRADAR     [?  @       VR_DEALISINGOPT    �?  @       IF_VTERMINAL    �?  @       IF_MODEL_DBZ    @  @       INFLATE_OBSERR    [@  @       IF_VROBS_RAW    �@  @       DORADARONEOB    �@  @       ONEOBLAT    A  @       ONEOBLON    [A  @       ONEOBDDIFF    �A  @       ONEOBVALUE    �A  @       ONEOBHEIGHT    B  @       ONEOBRADID    [B  @       ENS_HX_DBZ_CUT %   �B  @       STATIC_GSI_NOPCP_DBZ    �B  @       RMESH_DBZ    C  @       ZMESH_DBZ    [C  @       RMESH_VR    �C  @       ZMESH_VR "   �C  @       RADAR_NO_THINNING    D  @       MINTILTVR    [D  @       MAXTILTVR    �D  @       MINOBRANGEVR    �D  @       MAXOBRANGEVR    E  @       MINTILTDBZ    [E  @       MAXTILTDBZ    �E  @       MINOBRANGEDBZ    �E  @       MAXOBRANGEDBZ    F  @       DEBUGMODE !   [F  @       MISSING_TO_NOPCP    �F  @       IOUT_DBZ    �F  @       MYPE_DBZ    G  �       NOBS_SUB    �G  @       NETCDF_DIAG    �G  @       BINARY_DIAG    ?H  @       L_WCP_CWM    H  @       AIRCRAFT_RECON    �H  @       Q_DOE_A_136    �H  @       Q_DOE_A_137    ?I  @       Q_DOE_B_136    I  @       Q_DOE_B_137    �I  @       T_DOE_A_136    �I  @       T_DOE_A_137    ?J  @       T_DOE_B_136    J  @       T_DOE_B_137    �J  @       UV_DOE_A_236    �J  @       UV_DOE_A_237    ?K  @       UV_DOE_A_292    K  @       UV_DOE_B_236    �K  @       UV_DOE_B_237    �K  @       UV_DOE_B_292 