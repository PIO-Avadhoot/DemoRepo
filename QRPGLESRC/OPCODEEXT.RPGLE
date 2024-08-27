     DNUM1             S              5S 2 INZ(345.84)
     DNUM2             S              5S 2 INZ(567.43)
     DRESULT           S              5S 2 INZ(000.00)
     DRESULT1          S              4S 1 INZ(000.0)
     DA                S              5A   INZ('AAAAA')
     DB                S             10A   INZ('BBBBBBBBBB')
     DC                S             20A   INZ('how are you')
     DSTR1             S             40A   INZ('GOOD MORNING SIR')
     DSUBSTR1          S             40A   INZ(*BLANKS)
     Dloc              C                   'abcdefghijklmnopqrstuvwxyz'
     Dupc              C                   'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
     DCHAR_TIMESTAMP   S             20A   INZ('202408121456345678')
     DSCANPOS          S              2S 0 INZ(5)
     DK                S              5S 0 INZ(3)
     DCHAR_TIMESTAM2   S             20A   INZ('202015052345656789')
     DCHAR_DATE1       S             10A   INZ('200525')
     DCHAR_DATE        S             10A   INZ('202023')
     DCHAR_TIME1       S              8A   INZ('20:23:45')
     DCHAR_TIME2       S              8A   INZ('21:34:34')
     DDATE0            S               D
     DDATE1            S               D
     DDATE2            S               D
     DTIME0            S               T
     DTIME1            S               T
     DTIMESTP0         S               Z
     DTIMESTP1         S               Z
     DT                S              5S 0 INZ(2)
     DLENGTH           S              3S 0 INZ(4)
      ***ASSIGNMENT  OPCODES*****
     C                   EVAL      RESULT = NUM1 + NUM2
     C     RESULT        DSPLY
     C                   RESET                   RESULT
     C                   EVALR     B = A
     C                   RESET                   B
     C                   EVAL(H)   RESULT1 = NUM1+ NUM2
     C     RESULT1       DSPLY
     C                   RESET                   RESULT1
     C                   MOVE      A             B
     C     B             DSPLY
     C                   RESET                   B
     C                   MOVE(P)   A             B
     C     B             DSPLY
     C                   RESET                   B
     C                   MOVEL     A             B
     C     B             DSPLY
     C                   RESET                   B
     C                   MOVEL(P)  A             B
     C     B             DSPLY
     C                   RESET                   B
      ****ARITHMETIC OPERATORS *****
     C     NUM1          ADD(H)    NUM2          RESULT1
     C     RESULT1       DSPLY
     C                   RESET                   RESULT1
     C     NUM1          SUB(H)    NUM2          RESULT1
     C     RESULT1       DSPLY
     C                   RESET                   RESULT1
     C     NUM1          MULT(H)   NUM2          RESULT1
     C     RESULT1       DSPLY
     C                   RESET                   RESULT1
     C     NUM1          DIV(H)    NUM2          RESULT1
     C     RESULT1       DSPLY
     C                   RESET                   RESULT1
     C
     C                   Z-ADD(H)  234           NUM1
     C     NUM1          DSPLY
     C                   RESET                   NUM1
     C                   Z-SUB(H)  234           NUM1
     C     NUM1          DSPLY
     C                   RESET                   NUM1
      ****STRING opcodes ******
     C     'N'           SCAN      STR1          SCANPOS
     C     SCANPOS       DSPLY
     C                   RESET                   SCANPOS
     C     'N'           SCAN(E)   STR1:K        SCANPOS
     C                   IF        %ERROR
     C     'ERROR'       DSPLY
     C                   ENDIF
     C     LENGTH        SUBST     STR1:1        SUBSTR1
     C     SUBSTR1       DSPLY
     C                   EVAL      SUBSTR1 = 'ZZZZZZZZZZXXXXXZZZZZ'
     C     UPC:LOC       XLATE     STR1:1        SUBSTR1
     C     UPC:LOC       XLATE(P)  STR1          SUBSTR1
     C     UPC:LOC       XLATE(E)  STR1:T        SUBSTR1
     C                   IF        %ERROR
     C     'ERROR'       DSPLY
     C                   ENDIF
     C                   CLEAR                   SUBSTR1
     C                   EVAL      SUBSTR1 = 'SDDFGHFJBJ45BFJ7'
     C     'JBJ'         CHECK     SUBSTR1:2     SCANPOS
     C     SCANPOS       DSPLY
     C                   RESET                   SCANPOS
     C     'JBJ'         CHECKR    SUBSTR1       SCANPOS
     C     SCANPOS       DSPLY
     C                   RESET                   SCANPOS
     C
     C     'D'           CHECK(E)  SUBSTR1:T     SCANPOS
     C                   IF        %ERROR
     C     'ERROR'       DSPLY
     C                   ENDIF
      ****TIMESTAMP OPCODES ******
     C     *ISO0         TEST (Z)                CHAR_TIMESTAMP         18
     C     *ISO0         TEST (ZE)               CHAR_TIMESTAM2
     C                   IF        %ERROR
     C     'INVALD FORMT'DSPLY
     C                   ENDIF
     C     *MDY0         TEST (D)                CHAR_DATE1             34
     C     *DMY          TEST (DE)               CHAR_DATE
     C                   IF        %ERROR
     C     'INVALID FRMT'DSPLY
     C                   ENDIF
     C                   MOVEL     *DATE         DATE0
     C     DATE0         ADDDUR    01:*Y         DATE1
     C     DATE0         ADDDUR    02:*M         DATE1
     C     DATE0         ADDDUR    03:*D         DATE1
     C                   TIME                    TIME0
     C     TIME0         ADDDUR    01:*H         TIME1
     C     TIME0         ADDDUR    02:*MN        TIME1
     C     TIME0         ADDDUR    23:*S         TIME1
     C                   EVAL      *INLR = *ON
