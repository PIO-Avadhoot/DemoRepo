     FEMPDTL2   IF   E           k DISK
      *
     DID               S              5S 0 INZ(125)
     DNAME             S             20A
      *
     C     ID            SETGT     EMPDTL2
     C                   READ      EMPDTL2
     C                   EVAL      ID = EMPID
     C                   EVAL      NAME = EMPNAME
     C     ID            DSPLY
     C     NAME          DSPLY
      *
     C                   EVAL      *iNLR = *ON
