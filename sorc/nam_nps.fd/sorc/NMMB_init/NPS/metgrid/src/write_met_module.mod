  �  G   k820309    w          19.1        `\a                                                                                                          
       write_met_module.f WRITE_MET_MODULE                                                     
                                                           
                                                           
                         @                                '8                   #VERSION    #NX    #NY    #IPROJ    #XFCST 	   #XLVL 
   #STARTLAT    #STARTLON    #STARTI    #STARTJ    #DELTALAT    #DELTALON    #DX    #DY    #XLONC    #TRUELAT1    #TRUELAT2    #EARTH_RADIUS    #SLAB    #IS_WIND_GRID_REL    #FIELD    #HDATE    #UNITS    #MAP_SOURCE    #DESC                 �                                                               �                                                              �                                                              �                                                              �                               	               	                �                               
               	                �                                              	                �                                              	                �                                            	   	                �                                    $       
   	                �                                    (          	                �                                    ,          	                �                                    0          	                �                                    4          	                �                                    8          	                �                                    <          	                �                                    @          	                �                                    D          	               �                                          H                 	            &                   &                                                        �                                    �                          �                                   	       �                           �                                          �                           �                                          �                           �                                           �                           �                                   .                                                                                                                       3                                                                                                   1024#         @                                                       #ASSERTION !   #LEVEL "   #FMTSTRING #   #NEWLINE $   #I1 %   #I2 &   #I3 '   #I4 (   #I5 )   #I6 *   #F1 +   #F2 ,   #F3 -   #F4 .   #F5 /   #F6 0   #S1 1   #S2 2   #S3 3   #S4 4   #S5 5   #S6 6             
                                  !                     
                                  "                     
                                #                    1           
                                 $                     
                                 %                     
                                 &                     
                                 '                     
                                 (                     
                                 )                     
                                 *                     
                                 +     	                
                                 ,     	                
                                 -     	                
                                 .     	                
                                 /     	                
                                 0     	                
                               1                    1           
                               2                    1           
                               3                    1           
                               4                    1           
                               5                    1           
                               6                    1                                              7                                                       0                                             8                                                      3                                             9                                                      1                                             :                                                      2                                             ;                                                      4           @                                 <                       @ @                              =            #         @                                   >                    #FG_SOURCE ?   #SOURCE_IS_CONSTANT @   #DATESTR A   #ISTATUS B             
  @                             ?                    1           
                                  @                     
  @                             A                    1           D                                 B            #         @                                   C                    #FG_DATA D   #ISTATUS E             
                                  D     8             #MET_DATA              D                                 E            #         @                                   F                        �   ,      fn#fn    �   @   J   MODULE_DEBUG (     @   J   MISC_DEFINITIONS_MODULE     L  @   J   MET_DATA_MODULE )   �  �      MET_DATA+MET_DATA_MODULE 1     H   a   MET_DATA%VERSION+MET_DATA_MODULE ,   U  H   a   MET_DATA%NX+MET_DATA_MODULE ,   �  H   a   MET_DATA%NY+MET_DATA_MODULE /   �  H   a   MET_DATA%IPROJ+MET_DATA_MODULE /   -  H   a   MET_DATA%XFCST+MET_DATA_MODULE .   u  H   a   MET_DATA%XLVL+MET_DATA_MODULE 2   �  H   a   MET_DATA%STARTLAT+MET_DATA_MODULE 2     H   a   MET_DATA%STARTLON+MET_DATA_MODULE 0   M  H   a   MET_DATA%STARTI+MET_DATA_MODULE 0   �  H   a   MET_DATA%STARTJ+MET_DATA_MODULE 2   �  H   a   MET_DATA%DELTALAT+MET_DATA_MODULE 2   %  H   a   MET_DATA%DELTALON+MET_DATA_MODULE ,   m  H   a   MET_DATA%DX+MET_DATA_MODULE ,   �  H   a   MET_DATA%DY+MET_DATA_MODULE /   �  H   a   MET_DATA%XLONC+MET_DATA_MODULE 2   E  H   a   MET_DATA%TRUELAT1+MET_DATA_MODULE 2   �  H   a   MET_DATA%TRUELAT2+MET_DATA_MODULE 6   �  H   a   MET_DATA%EARTH_RADIUS+MET_DATA_MODULE .     �   a   MET_DATA%SLAB+MET_DATA_MODULE :   �  H   a   MET_DATA%IS_WIND_GRID_REL+MET_DATA_MODULE /   	  P   a   MET_DATA%FIELD+MET_DATA_MODULE /   a	  P   a   MET_DATA%HDATE+MET_DATA_MODULE /   �	  P   a   MET_DATA%UNITS+MET_DATA_MODULE 4   
  P   a   MET_DATA%MAP_SOURCE+MET_DATA_MODULE .   Q
  P   a   MET_DATA%DESC+MET_DATA_MODULE #   �
  q       ERROR+MODULE_DEBUG 9     t       MAX_FILENAME_LEN+MISC_DEFINITIONS_MODULE %   �        MPRINTF+MODULE_DEBUG /   �  @   a   MPRINTF%ASSERTION+MODULE_DEBUG +   �  @   a   MPRINTF%LEVEL+MODULE_DEBUG /     L   a   MPRINTF%FMTSTRING+MODULE_DEBUG -   `  @   a   MPRINTF%NEWLINE+MODULE_DEBUG (   �  @   a   MPRINTF%I1+MODULE_DEBUG (   �  @   a   MPRINTF%I2+MODULE_DEBUG (      @   a   MPRINTF%I3+MODULE_DEBUG (   `  @   a   MPRINTF%I4+MODULE_DEBUG (   �  @   a   MPRINTF%I5+MODULE_DEBUG (   �  @   a   MPRINTF%I6+MODULE_DEBUG (      @   a   MPRINTF%F1+MODULE_DEBUG (   `  @   a   MPRINTF%F2+MODULE_DEBUG (   �  @   a   MPRINTF%F3+MODULE_DEBUG (   �  @   a   MPRINTF%F4+MODULE_DEBUG (      @   a   MPRINTF%F5+MODULE_DEBUG (   `  @   a   MPRINTF%F6+MODULE_DEBUG (   �  L   a   MPRINTF%S1+MODULE_DEBUG (   �  L   a   MPRINTF%S2+MODULE_DEBUG (   8  L   a   MPRINTF%S3+MODULE_DEBUG (   �  L   a   MPRINTF%S4+MODULE_DEBUG (   �  L   a   MPRINTF%S5+MODULE_DEBUG (     L   a   MPRINTF%S6+MODULE_DEBUG 4   h  q       PROJ_LATLON+MISC_DEFINITIONS_MODULE 2   �  q       PROJ_MERC+MISC_DEFINITIONS_MODULE 0   J  q       PROJ_LC+MISC_DEFINITIONS_MODULE 0   �  q       PROJ_PS+MISC_DEFINITIONS_MODULE 3   ,  q       PROJ_GAUSS+MISC_DEFINITIONS_MODULE    �  @       OUTPUT_UNIT !   �  @       MET_OUT_FILENAME      �       WRITE_MET_INIT )   �  L   a   WRITE_MET_INIT%FG_SOURCE 2   �  @   a   WRITE_MET_INIT%SOURCE_IS_CONSTANT '   2  L   a   WRITE_MET_INIT%DATESTR '   ~  @   a   WRITE_MET_INIT%ISTATUS %   �  b       WRITE_NEXT_MET_FIELD -      V   a   WRITE_NEXT_MET_FIELD%FG_DATA -   v  @   a   WRITE_NEXT_MET_FIELD%ISTATUS     �  H       WRITE_MET_CLOSE 