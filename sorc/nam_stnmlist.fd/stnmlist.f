      PROGRAM NAM_STNMLIST
C$$$  MAIN PROGRAM DOCUMENTATION BLOCK
C
C MAIN PROGRAM:  NAM_STNMLIST
C   PRGMMR: KEYSER           ORG: NP22        DATE: 2006-02-02
C
C ABSTRACT: TAKES BUFR OUTPUT FROM THE ETA SOUNDING POST-PROCESSOR IN
C   MONOLITHIC FORM AND WRITES OUT INDIVIDUAL STATIONS' OUTPUT INTO
C   SEPARATE FILES.
C
C PROGRAM HISTORY LOG:
C 1995-11-22  WOOLLEN  - ORIGINAL AUTHOR
C 1999-03-16  BALDWIN  - ADD DOCBLOCK FOR OPERATIONAL VERSION
C 1999-05-14  BRILL    - ADDED IOTYPE FLAG (READ FROM UNIT 5)
C 2006-02-02  KEYSER   - UPDATED DOCBLOCK, ADDED COMMENTS, STREAMLINED
C                        CODE; REMOVED IN-LINE SUBROUTINE UFBPOS SINCE
C                        IT WAS ADDED TO 1/31/2006 VERSION OF BUFRLIB
C 2011-04-11  ROGERS     INCREASED LENGTH OF OUTFIL CHARACTER STRING 
C                        FROM 80 TO 95 SO IT WOULD READ IN NAM NEST
C                        HISTORY FILE
C
C USAGE:
C   INPUT FILES:
C     UNIT 05  - SEE REMARKS
C     UNIT 20  - MONOLITHIC BUFR INPUT FILE
C
C   OUTPUT FILES:
C     UNIT 06  - STANDARD OUTPUT PRINT
C     UNIT 50  - INDIVIDUAL OUTPUT FILES FOR EACH STATION (OPENED
C                WITHIN CODE, SEE REMARKS FOR FILE NAME STRUCTURE)
C
C   SUBPROGRAMS CALLED:
C     LIBRARY:
C       W3LIB    - W3TAGB     W3TAGE     ERREXIT
C       BUFRLIB  - DATELEN    OPENBF     OPENMB     CLOSBF     UFBTAB
C                  UFBCPY     READMG     WRITSB     UFBPOS
C
C   EXIT STATES:
C     COND =   0 - SUCCESSFUL RUN
C            > 0 - ABNORMAL TERMINATION
C
C   REMARKS:
C     CONTENTS OF STANDARD INPUT IN UNIT 05:
C        RECORD 1     - FLAG FOR OUTPUT TYPE - IOTYPE
C	                 IOTYPE = 0 => 5-digit ID;  8-digit date-time
C                                      stamp
C	                 IOTYPE = 1 => 6-digit ID; 10-digit date-time
C                                      stamp
C        RECORD 2     - COMPLETE PATH TO INPUT BUFR FILE
C        RECORD 3     - NAME OF DIRECTORY CONTAINING OUTPUT FILES -
C                       DIRD, COMPLETE PATH TO OUTPUT FILES IS:
C                         "DIRD.STATION_ID.DATE" ,  WHERE THE STATION
C                         ID AND DATE ARE READ FROM THE BUFR FILE -
C                         FORMAT IS:
C                          ('(A,".",I5.5,".",I8.8)') FOR IOTYPE = 0
C                          ('(A,".",I6.6,".",I10)')  FOR IOTYPE = 1
C        RECORD 4-end - OPTIONAL LIST OF STATIONS SELECTED FOR OUTPUT
C                       IN (I5) FORMAT 
C                        IF LIST OF STATIONS IS NOT PRESENT IN UNIT 05,
C                        THEN ALL STATIONS IN INPUT BUFR FILE ARE
C                        SELECTED
C
C ATTRIBUTES:
C   LANGUAGE: FORTRAN 90
C   MACHINE:  IBM-CCS
C
C$$$

      PARAMETER (MXTS=5,MXTB=200000,MXLS=2000)

      CHARACTER*255  OUTFIL,DIRD,BFRFIL
      CHARACTER*80  FMTO,TSTR
      CHARACTER*8   SUBSET
      REAL*8	    TAB(MXTS,MXTB)
      DIMENSION     LIST(MXLS)
      LOGICAL       ONLIST

      DATA TSTR   /'STNM IREC ISUB'/

      DATA BMISS  /10E10/
      DATA LUBFI  /   20/
      DATA LUBFO  /   50/
      DATA IWROT  /    0/

C-----------------------------------------------------------------------
C-----------------------------------------------------------------------
      CALL W3TAGB('NAM_STNMLIST',2006,0033,0061,'NP22')

      DIRD = ' '
      READ (5,'(I1)') IOTYPE
      READ (5,'(A)') BFRFIL
      READ (5,'(A)') DIRD
      LSS = LEN(DIRD)
      DO WHILE(DIRD(LSS:LSS).EQ.' ')
	 LSS = LSS - 1
      ENDDO       

C  FORMAT FOR ASSIGN STATEMENT THAT ASSIGNS THE OUTPUT FILE NAMES
C  --------------------------------------------------------------

      IF(IOTYPE.EQ.1) THEN
         FMTO = '(A,".",I6.6,".",I10)'
	 IDTLN = 10
      ELSE
         FMTO = '(A,".",I5.5,".",I8.8)'
	 IDTLN = 8
      ENDIF

ccccc CALL OPENBF(0,'QUIET',2) ! Uncomment for extra print from bufrlib


C  SEE IF THERE IS A LIST OF STATIONS
C  ----------------------------------

      DO N=1,MXLS
         READ(5,'(I5)',END=1) LIST(N)
         IF(LIST(N).EQ.0) EXIT
      ENDDO

      IF (N.GE.MXLS) THEN
        WRITE (6,'("MXLS (=",I6,") IS TOO SMALL FOR THE LIST")') MXLS
        CALL W3TAGE('NAM_STNMLIST')
        CALL ERREXIT(99)
      ENDIF

    1 CONTINUE

      NLIST = N-1
      WRITE (6,*) ' BEGINNING BREAKOUT'

C  CHECK FOR VALID INPUT FILE, GET DATE, MAKE TABLE OF ID & POINTERS
C  -----------------------------------------------------------------

      OPEN(UNIT=LUBFI,FILE=BFRFIL,STATUS='OLD',FORM='UNFORMATTED',
     .  IOSTAT=IOS)
      IF(IOS.NE.0) THEN
	 WRITE (6,'("Error opening input BUFR file, IOS = ",I5)') IOS
         CALL W3TAGE('NAM_STNMLIST')
         CALL ERREXIT(99)
      END IF
      CALL UFBTAB(LUBFI,TAB,MXTS,MXTB,NTAB,TSTR)

      print *, ntab
C     IF(NTAB.EQ.0) GOTO 901
      IF(NTAB.EQ.0) THEN
        WRITE (6,*) 'NO DATA IN INPUT BUFR FILE'
        CALL W3TAGE('NAM_STNMLIST')
        CALL ERREXIT(99)
      ENDIF

      OPEN(UNIT=LUBFI,FILE=BFRFIL,STATUS='OLD',FORM='UNFORMATTED',
     . IOSTAT=IOS)
      CALL OPENBF(LUBFI,'IN',LUBFI)
      CALL DATELEN(IDTLN)
      CALL READMG(LUBFI,SUBSET,IDATE,IRET)

C     IF(IRET.NE.0) GOTO 900
      IF(IRET.NE.0) THEN
        WRITE (6,*) 'MISSING INPUT BUFR FILE'
        CALL W3TAGE('NAM_STNMLIST')
        CALL ERREXIT(99)
      ENDIF

C  COPY OFF STATIONS ON THE LIST INTO THEIR OWN FILES
C  --------------------------------------------------

      DO N=1,NTAB
         IF(TAB(1,N).GE.BMISS) CYCLE
         print *, 'IDNM, IREC, ISUB: ',TAB(1,N),TAB(2,N),TAB(3,N)
         IDNM = TAB(1,N)
         IREC = TAB(2,N)
         ISUB = TAB(3,N)

         IF(NLIST.GT.0) THEN
            ONLIST = .FALSE.
            DO L=1,NLIST
               ONLIST = (LIST(L).EQ.IDNM.OR.ONLIST)
            ENDDO
         ELSE
            ONLIST = .TRUE.
         ENDIF

         IF(.NOT.ONLIST) CYCLE
         CALL CLOSBF(LUBFO)
         WRITE(OUTFIL,FMTO) DIRD(1:LSS),IDNM,IDATE
	 OPEN(UNIT=LUBFO,FILE=OUTFIL,STATUS='UNKNOWN',FORM='UNFORMATTED',
     .    IOSTAT=IOS)
	 IF(IOS.NE.0) THEN
            WRITE (6,'(" CANNOT open ",A,", IOS = ",I5)') OUTFIL,IOS
            CALL W3TAGE('NAM_STNMLIST')
            CALL ERREXIT(99)
	 END IF
         CALL SETBLOCK(1)
         CALL OPENBF(LUBFO,'OUT',LUBFI)
         CALL UFBPOS(LUBFI,IREC,ISUB,SUBSET,JDATE)
         CALL OPENMB(LUBFO,SUBSET,JDATE)
         CALL UFBCPY(LUBFI,LUBFO)
         CALL WRITSB(LUBFO)
         IWROT = IWROT + 1
         TAB(1,N) = BMISS
         DO M=N+1,NTAB
            JDNM = TAB(1,M)
            IREC = TAB(2,M)
            ISUB = TAB(3,M)
            IF(IDNM.EQ.JDNM) THEN
               CALL UFBPOS(LUBFI,IREC,ISUB,SUBSET,JDATE)
               CALL OPENMB(LUBFO,SUBSET,JDATE)
               CALL UFBCPY(LUBFI,LUBFO)
               CALL WRITSB(LUBFO)
               TAB(1,M) = BMISS
            ENDIF
         ENDDO
         CALL CLOSBF(LUBFO)
      ENDDO

C     IF(IWROT.EQ.0)  GOTO 902
      IF(IWROT.EQ.0) THEN
        WRITE (6,*) 'NO STATION ID DATA IN INPUT BUFR FILE'
        CALL W3TAGE('NAM_STNMLIST')
        CALL ERREXIT(99)
      ENDIF

      CALL W3TAGE('NAM_STNMLIST')
      STOP
      END
