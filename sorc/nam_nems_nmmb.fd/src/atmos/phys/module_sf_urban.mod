  �|  �   k820309    w          19.1        W�ea                                                                                                          
       module_SF_URBAN.f90 MODULE_SF_URBAN            @                                                       @                                                      @                                                    	                &                                                    @                                                    	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @ @                               	                   	                &                                                    @ @                               
                   	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @ @                                                  	                &                                                    @                                                    	                &                                                      @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                      	                  @                                       	                  @                                 !     	                  @                                 "     	                  @                                 #     	                  @                                 $     	                  @                                 %     	                  @                                 &     	                  @                                 '                       @                                 (                       @                                 )                       @                                 *                       @                                 +                                                        ,            #         @                                   -                 ;   #LSOLAR .   #NUM_ROOF_LAYERS /   #NUM_WALL_LAYERS 0   #NUM_ROAD_LAYERS 1   #DZR 2   #DZB 3   #DZG 4   #UTYPE 5   #TA 6   #QA 7   #UA 8   #U1 9   #V1 :   #SSG ;   #SSGD <   #SSGQ =   #LLG >   #RAIN ?   #RHOO @   #ZA A   #DECLIN B   #COSZ C   #OMG D   #XLAT E   #DELT F   #ZNT G   #CHS H   #CHS2 I   #TR J   #TB K   #TG L   #TC M   #QC N   #UC O   #TRL P   #TBL Q   #TGL R   #XXXR S   #XXXB T   #XXXG U   #XXXC V   #TS W   #QS X   #SH Y   #LH Z   #LH_KINEMATIC [   #SW \   #ALB ]   #LW ^   #G _   #RN `   #PSIM a   #PSIH b   #GZ1OZ0 c   #U10 d   #V10 e   #TH2 f   #Q2 g   #UST h             
                                  .                     
  @                               /                     
  @                               0                     
  @                               1                    
  @   �                            2                    	    p          & p        5 � p        r /       5 � p        r /                              
  @   �                            3                    	    p          & p        5 � p        r 0       5 � p        r 0                              
  @   �                            4                    	    p          & p        5 � p        r 1       5 � p        r 1                               
  @                               5                     
  @                               6     	                
                                  7     	                
  @                               8     	                
                                  9     	                
                                  :     	                
  @                               ;     	                
D                                 <     	                 
D                                 =     	                 
                                  >     	                
                                  ?     	                
                                  @     	                
                                  A     	                
  @                               B     	                
  @                               C     	                
  @                               D     	                
                                  E     	                
  @                               F     	                
                                  G     	                
                                  H     	                
                                  I     	                
D @                               J     	                 
D @                               K     	                 
D @                               L     	                 
D                                 M     	                 
D                                 N     	                 
D @                               O     	                
D @   �                            P                    	     p          & p        5 � p        r /       5 � p        r /                              
D @   �                            Q                    	     p          & p        5 � p        r 0       5 � p        r 0                              
D @   �                            R                    	     p          & p        5 � p        r 1       5 � p        r 1                               
D @                               S     	                 
D @                               T     	                 
D @                               U     	                 
D @                               V     	                 D                                 W     	                 D                                 X     	                 D                                 Y     	                 D                                 Z     	                 D                                 [     	                 D                                 \     	                 D                                 ]     	                 D                                 ^     	                 D                                 _     	                 D                                 `     	                 D                                 a     	                 D                                 b     	                 D                                 c     	                 D                                 d     	                 D                                 e     	                 D                                 f     	                 D                                 g     	                 D                                 h     	       #         @                                  i                 )   #UTYPE j   #ZR k   #Z0C l   #Z0HC m   #ZDC n   #SVF o   #R p   #RW q   #HGT r   #CDS s   #AS t   #AH u   #CAPR v   #CAPB w   #CAPG x   #AKSR y   #AKSB z   #AKSG {   #ALBR |   #ALBB }   #ALBG ~   #EPSR    #EPSB �   #EPSG �   #Z0R �   #Z0B �   #Z0G �   #Z0HR �   #Z0HB �   #Z0HG �   #BETR �   #BETB �   #BETG �   #TRLEND �   #TBLEND �   #TGLEND �   #BOUNDR �   #BOUNDB �   #BOUNDG �   #CH_SCHEME �   #TS_SCHEME �             
                                  j                     D                                 k     	                 D                                 l     	                 D                                 m     	                 D                                 n     	                 D                                 o     	                 D                                 p     	                 D                                 q     	                 D                                 r     	                 D                                 s     	                 D                                 t     	                 D                                 u     	                 D                                 v     	                 D                                 w     	                 D                                 x     	                 D                                 y     	                 D                                 z     	                 D                                 {     	                 D                                 |     	                 D                                 }     	                 D                                 ~     	                 D                                      	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �     	                 D                                 �                      D                                 �                      D                                 �                      D                                 �                      D                                 �            #         @                                  �                    #XXX �   #ALPHA �   #CD �   #B1 �   #RIB �   #Z �   #Z0 �   #UA �   #TA �   #TSF �   #RHO �             
D @                               �     	                 D                                 �     	                 D                                 �     	                 
                                  �     	                
D                                 �     	                 
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	      #         @                                  �                 	   #KM �   #BOUND �   #G0 �   #CAP �   #AKS �   #TSL �   #DZ �   #DELT �   #TSLEND �             
                                  �                     
                                  �                     
                                  �     	                
                                  �     	                
                                  �     	               
D                                 �                    	     p          5 � p        r �       5 � p        r �                              
                                  �                    	    p          5 � p        r �       5 � p        r �                               
                                  �     	                
                                  �     	      #         @                                  �                 
   #CAP �   #AKS �   #DELT �   #S �   #R �   #H �   #LE �   #TSLEND �   #TSP �   #TS �             
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                D                                 �     	       #         @                                   �                    #ALPHA �   #CD �   #RIB �   #Z �   #Z0 �   #UA �   #RHO �             D                                 �     	                 D                                 �     	                 
D                                 �     	                 
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	      #         @                                   �                    #ALPHA �   #CD �   #RIB �   #Z �   #Z0 �   #UA �   #RHO �             D                                 �     	                 D                                 �     	                 
D                                 �     	                 
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	      #         @                                   �                    #DZR �   #DZB �   #DZG �   #NUM_SOIL_LAYERS �            
D     �                            �                    	     p          & p        5 � p        r �       5 � p        r �                              
D     �                            �                    	      p          & p        5 � p        r �       5 � p        r �                              
D     �                            �                    	 !    p          & p        5 � p        r �       5 � p        r �                               
                                  �           #         @                                   �                    #TSURFACE0_URB �   #TLAYER0_URB �   #TDEEP0_URB �   #IVGTYP �   #IMS �   #IME �   #JMS �   #JME �   #NUM_SOIL_LAYERS �   #XXXR_URB2D �   #XXXB_URB2D �   #XXXG_URB2D �   #XXXC_URB2D �   #TR_URB2D �   #TB_URB2D �   #TG_URB2D �   #TC_URB2D �   #QC_URB2D �   #TRL_URB3D �   #TBL_URB3D �   #TGL_URB3D �   #SH_URB2D �   #LH_URB2D �   #G_URB2D �   #RN_URB2D �   #TS_URB2D �   #FRC_URB2D �   #UTYPE_URB2D �            
      �                            �                    	 "     5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
      �                            �                    	 #       5 � p        r �   5 � p 	       r �   p          5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & p        5 � p 	       r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p          5 � p 	       r �       5 � p        r �   5 � p        r �   p                                   
      �                            �                    	 $     5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
      �                            �                     %     5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                    
                                  �                     
                                  �                     
                                  �                     
                                  �                     
                                  �                    
D     �                            �                    	 +      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 ,      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 -      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 .      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 &      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 '      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 (      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 )      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 *      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 /        5 � p        r �   5 � p 	       r �   p          5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & p        5 � p 	       r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p          5 � p 	       r �       5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 0        5 � p        r �   5 � p 	       r �   p          5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & p        5 � p 	       r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p          5 � p 	       r �       5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 1        5 � p        r �   5 � p 	       r �   p          5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & p        5 � p 	       r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p          5 � p 	       r �       5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 2      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 3      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 4      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 5      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 6      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                    	 7      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                                   
D     �                            �                     8      5 � p        r �     5 � p        r �   5 � p        r �   p        5 � p        r �     & 5 � p        r �   5 � p        r �     & 5 � p        r �   5 � p        r �         5 � p        r �   5 � p        r �   p            5 � p        r �   5 � p        r �   p                          #         @                                   �                    #TSP �   #PS �   #S �   #EPS �   #RX �   #SIG �   #RHO �   #CP �   #CH �   #UA �   #QA �   #TA �   #EL �   #BET �   #AKS �   #TSL �   #DZ �   #TS �             
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                
                                  �     	                D                                 �     	          �   ,      fn#fn    �   @       LU_DATA_TYPE      @       ICATE    L  �       ZR_TBL    �  �       Z0C_TBL    d  �       Z0HC_TBL    �  �       ZDC_TBL    |  �       SVF_TBL      �       R_TBL    �  �       RW_TBL       �       HGT_TBL    �  �       CDS_TBL    8  �       AS_TBL    �  �       AH_TBL    P  �       BETR_TBL    �  �       BETB_TBL    h  �       BETG_TBL    �  �       FRC_URB_TBL    �	  @       CAPR_DATA    �	  @       CAPB_DATA     
  @       CAPG_DATA    @
  @       AKSR_DATA    �
  @       AKSB_DATA    �
  @       AKSG_DATA       @       ALBR_DATA    @  @       ALBB_DATA    �  @       ALBG_DATA    �  @       EPSR_DATA       @       EPSB_DATA    @  @       EPSG_DATA    �  @       Z0R_DATA    �  @       Z0B_DATA       @       Z0G_DATA    @  @       Z0HR_DATA    �  @       Z0HB_DATA    �  @       Z0HG_DATA       @       TRLEND_DATA    @  @       TBLEND_DATA    �  @       TGLEND_DATA    �  @       BOUNDR_DATA       @       BOUNDB_DATA    @  @       BOUNDG_DATA    �  @       CH_SCHEME_DATA    �  @       TS_SCHEME_DATA        @       ALLOCATE_STATUS    @  �      URBAN    �  @   a   URBAN%LSOLAR &     @   a   URBAN%NUM_ROOF_LAYERS &   K  @   a   URBAN%NUM_WALL_LAYERS &   �  @   a   URBAN%NUM_ROAD_LAYERS    �  �   a   URBAN%DZR    �  �   a   URBAN%DZB    S  �   a   URBAN%DZG      @   a   URBAN%UTYPE    W  @   a   URBAN%TA    �  @   a   URBAN%QA    �  @   a   URBAN%UA      @   a   URBAN%U1    W  @   a   URBAN%V1    �  @   a   URBAN%SSG    �  @   a   URBAN%SSGD      @   a   URBAN%SSGQ    W  @   a   URBAN%LLG    �  @   a   URBAN%RAIN    �  @   a   URBAN%RHOO      @   a   URBAN%ZA    W  @   a   URBAN%DECLIN    �  @   a   URBAN%COSZ    �  @   a   URBAN%OMG      @   a   URBAN%XLAT    W  @   a   URBAN%DELT    �  @   a   URBAN%ZNT    �  @   a   URBAN%CHS      @   a   URBAN%CHS2    W  @   a   URBAN%TR    �  @   a   URBAN%TB    �  @   a   URBAN%TG      @   a   URBAN%TC    W  @   a   URBAN%QC    �  @   a   URBAN%UC    �  �   a   URBAN%TRL    �  �   a   URBAN%TBL    _  �   a   URBAN%TGL    #  @   a   URBAN%XXXR    c  @   a   URBAN%XXXB    �  @   a   URBAN%XXXG    �  @   a   URBAN%XXXC    #   @   a   URBAN%TS    c   @   a   URBAN%QS    �   @   a   URBAN%SH    �   @   a   URBAN%LH #   #!  @   a   URBAN%LH_KINEMATIC    c!  @   a   URBAN%SW    �!  @   a   URBAN%ALB    �!  @   a   URBAN%LW    #"  @   a   URBAN%G    c"  @   a   URBAN%RN    �"  @   a   URBAN%PSIM    �"  @   a   URBAN%PSIH    ##  @   a   URBAN%GZ1OZ0    c#  @   a   URBAN%U10    �#  @   a   URBAN%V10    �#  @   a   URBAN%TH2    #$  @   a   URBAN%Q2    c$  @   a   URBAN%UST    �$  �      READ_PARAM !   �&  @   a   READ_PARAM%UTYPE    �&  @   a   READ_PARAM%ZR    	'  @   a   READ_PARAM%Z0C     I'  @   a   READ_PARAM%Z0HC    �'  @   a   READ_PARAM%ZDC    �'  @   a   READ_PARAM%SVF    	(  @   a   READ_PARAM%R    I(  @   a   READ_PARAM%RW    �(  @   a   READ_PARAM%HGT    �(  @   a   READ_PARAM%CDS    	)  @   a   READ_PARAM%AS    I)  @   a   READ_PARAM%AH     �)  @   a   READ_PARAM%CAPR     �)  @   a   READ_PARAM%CAPB     	*  @   a   READ_PARAM%CAPG     I*  @   a   READ_PARAM%AKSR     �*  @   a   READ_PARAM%AKSB     �*  @   a   READ_PARAM%AKSG     	+  @   a   READ_PARAM%ALBR     I+  @   a   READ_PARAM%ALBB     �+  @   a   READ_PARAM%ALBG     �+  @   a   READ_PARAM%EPSR     	,  @   a   READ_PARAM%EPSB     I,  @   a   READ_PARAM%EPSG    �,  @   a   READ_PARAM%Z0R    �,  @   a   READ_PARAM%Z0B    	-  @   a   READ_PARAM%Z0G     I-  @   a   READ_PARAM%Z0HR     �-  @   a   READ_PARAM%Z0HB     �-  @   a   READ_PARAM%Z0HG     	.  @   a   READ_PARAM%BETR     I.  @   a   READ_PARAM%BETB     �.  @   a   READ_PARAM%BETG "   �.  @   a   READ_PARAM%TRLEND "   	/  @   a   READ_PARAM%TBLEND "   I/  @   a   READ_PARAM%TGLEND "   �/  @   a   READ_PARAM%BOUNDR "   �/  @   a   READ_PARAM%BOUNDB "   	0  @   a   READ_PARAM%BOUNDG %   I0  @   a   READ_PARAM%CH_SCHEME %   �0  @   a   READ_PARAM%TS_SCHEME    �0  �       MOS    o1  @   a   MOS%XXX    �1  @   a   MOS%ALPHA    �1  @   a   MOS%CD    /2  @   a   MOS%B1    o2  @   a   MOS%RIB    �2  @   a   MOS%Z    �2  @   a   MOS%Z0    /3  @   a   MOS%UA    o3  @   a   MOS%TA    �3  @   a   MOS%TSF    �3  @   a   MOS%RHO    /4  �       MULTI_LAYER    �4  @   a   MULTI_LAYER%KM "   5  @   a   MULTI_LAYER%BOUND    K5  @   a   MULTI_LAYER%G0     �5  @   a   MULTI_LAYER%CAP     �5  @   a   MULTI_LAYER%AKS     6  �   a   MULTI_LAYER%TSL    �6  �   a   MULTI_LAYER%DZ !   s7  @   a   MULTI_LAYER%DELT #   �7  @   a   MULTI_LAYER%TSLEND    �7  �       FORCE_RESTORE "   �8  @   a   FORCE_RESTORE%CAP "   �8  @   a   FORCE_RESTORE%AKS #   9  @   a   FORCE_RESTORE%DELT     Q9  @   a   FORCE_RESTORE%S     �9  @   a   FORCE_RESTORE%R     �9  @   a   FORCE_RESTORE%H !   :  @   a   FORCE_RESTORE%LE %   Q:  @   a   FORCE_RESTORE%TSLEND "   �:  @   a   FORCE_RESTORE%TSP !   �:  @   a   FORCE_RESTORE%TS    ;  �       LOUIS79    �;  @   a   LOUIS79%ALPHA    �;  @   a   LOUIS79%CD    <  @   a   LOUIS79%RIB    U<  @   a   LOUIS79%Z    �<  @   a   LOUIS79%Z0    �<  @   a   LOUIS79%UA    =  @   a   LOUIS79%RHO    U=  �       LOUIS82    �=  @   a   LOUIS82%ALPHA    >  @   a   LOUIS82%CD    Y>  @   a   LOUIS82%RIB    �>  @   a   LOUIS82%Z    �>  @   a   LOUIS82%Z0    ?  @   a   LOUIS82%UA    Y?  @   a   LOUIS82%RHO !   �?  x       URBAN_PARAM_INIT %   @  �   a   URBAN_PARAM_INIT%DZR %   �@  �   a   URBAN_PARAM_INIT%DZB %   �A  �   a   URBAN_PARAM_INIT%DZG 1   ]B  @   a   URBAN_PARAM_INIT%NUM_SOIL_LAYERS    �B  �      URBAN_VAR_INIT -   vD    a   URBAN_VAR_INIT%TSURFACE0_URB +   �F  �  a   URBAN_VAR_INIT%TLAYER0_URB *   I    a   URBAN_VAR_INIT%TDEEP0_URB &   2K    a   URBAN_VAR_INIT%IVGTYP #   FM  @   a   URBAN_VAR_INIT%IMS #   �M  @   a   URBAN_VAR_INIT%IME #   �M  @   a   URBAN_VAR_INIT%JMS #   N  @   a   URBAN_VAR_INIT%JME /   FN  @   a   URBAN_VAR_INIT%NUM_SOIL_LAYERS *   �N    a   URBAN_VAR_INIT%XXXR_URB2D *   �P    a   URBAN_VAR_INIT%XXXB_URB2D *   �R    a   URBAN_VAR_INIT%XXXG_URB2D *   �T    a   URBAN_VAR_INIT%XXXC_URB2D (   �V    a   URBAN_VAR_INIT%TR_URB2D (   �X    a   URBAN_VAR_INIT%TB_URB2D (   �Z    a   URBAN_VAR_INIT%TG_URB2D (   ]    a   URBAN_VAR_INIT%TC_URB2D (   &_    a   URBAN_VAR_INIT%QC_URB2D )   :a  �  a   URBAN_VAR_INIT%TRL_URB3D )   �c  �  a   URBAN_VAR_INIT%TBL_URB3D )   bf  �  a   URBAN_VAR_INIT%TGL_URB3D (   �h    a   URBAN_VAR_INIT%SH_URB2D (   
k    a   URBAN_VAR_INIT%LH_URB2D '   m    a   URBAN_VAR_INIT%G_URB2D (   2o    a   URBAN_VAR_INIT%RN_URB2D (   Fq    a   URBAN_VAR_INIT%TS_URB2D )   Zs    a   URBAN_VAR_INIT%FRC_URB2D +   nu    a   URBAN_VAR_INIT%UTYPE_URB2D    �w  �       BISECTION    `x  @   a   BISECTION%TSP    �x  @   a   BISECTION%PS    �x  @   a   BISECTION%S     y  @   a   BISECTION%EPS    `y  @   a   BISECTION%RX    �y  @   a   BISECTION%SIG    �y  @   a   BISECTION%RHO     z  @   a   BISECTION%CP    `z  @   a   BISECTION%CH    �z  @   a   BISECTION%UA    �z  @   a   BISECTION%QA     {  @   a   BISECTION%TA    `{  @   a   BISECTION%EL    �{  @   a   BISECTION%BET    �{  @   a   BISECTION%AKS     |  @   a   BISECTION%TSL    `|  @   a   BISECTION%DZ    �|  @   a   BISECTION%TS 