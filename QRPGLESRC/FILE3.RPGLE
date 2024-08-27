     FGYMDTL2   IF   E           K DISK
      *
     DNAME             S             20A
     DGENDER           S             13A
      *
     C     *HIVAL        SETLL     GYMDTL2
     C                   READP     GYMDTL2
     C                   DOW       NOT %EOF(GYMDTL2)
     C                   EVAL      NAME = ANAME
     C                   EVAL      GENDER = AGENDER
     C     NAME          DSPLY
     C     GENDER        DSPLY
     C                   READP     GYMDTL2
     C                   ENDDO
     C                   EVAL      *inlr = *on
