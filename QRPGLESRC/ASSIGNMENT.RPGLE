     FGYMDTL2   IF   E           K DISK
      ****
      * Main Logic
     C     *END          SETLL     GYMDTL2
     C                   READP     GYMDTL2
     C                   DOW       NOT %EOF(GYMDTL2)
      * Display the file records
     C     AID           DSPLY
     C     ANAME         DSPLY
     C     DOJ           DSPLY
     C     AFEES         DSPLY
     C     AGENDER       DSPLY
     C                   READP     GYMDTL2
     C                   ENDDO
     C                   EVAL      *INLR = *ON
