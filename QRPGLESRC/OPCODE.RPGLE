     DA                S              5S 2 INZ(234.56)
     DB                S              5S 2 INZ(456.78)
     DRESULT1          S              7S 2 INZ(000.00)
     DRESULT           S              5S 2 INZ(000.00)
     C                   EVAL      RESULT = A+B
     C     RESULT        DSPLY
     C                   CLEAR                   RESULT
     C     RESULT        DSPLY
      ********ARITHMETIC OPCODES*******
     C     A             ADD       B             RESULT
     C     RESULT        DSPLY
     C                   CLEAR                   result
     C                   ADD       A             B
     C     B             DSPLY
     c                   RESET                   B
     C     A             SUB       B             RESULT
     C     RESULT        DSPLY
     C                   CLEAR                   RESULT
     C                   SUB       A             B
     C     B             DSPLY
     C                   reset                   B
     C     A             MULT      B             RESULT1
     C                   MULT      A             B
     C     B             DSPLY
     C                   reset                   B
     C     A             DIV       B             RESULT
     C     RESULT        DSPLY
     C                   CLEAR                   RESULT
     c                   eval      *inlr = *on
