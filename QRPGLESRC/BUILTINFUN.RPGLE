     dNUM1             S              5S 0 INZ(23455)
     DNUM2             S              5S 0 INZ(34567)
     DSUM              S              5  0 INZ(00000)
     DNAMESTR          S             30A   INZ('JAIPUR IS CALLED AS PINK CITY')
     Dtrimedstr        S             30A
     DNAMESTR2         S             30A   INZ(*BLANKS)
     DPOS              S              5S 0 INZ(00)
     DDATE1            S             10s 0 INZ(070620)
     DDATE2            S               d
     DDATE3            S               d
     DDATE0            S               D
     DCHAR001          S             10A   INZ('-3456.78')
     DDEC001           S             10S 2
     DTIMESTM          S               z
     DTIMESTM1         S               z
     DDEC002           S              7S 3
     DMYNUM1           S             10S 0
     DTODAY            S               D
     DMYDATE           S               D
     DDAYS_DIFF        S             10S 0
     DDT1              S               D
     DDT2              S               D
     DTIME_DIFF        S             10S 0
     DTT1              S               T
     DTT2              S               T
      *****abs FUNCTION*****

     C                   EVAL      SUM=NUM1-NUM2
     C                   EVAL      SUM=%ABS(NUM1-NUM2)
     C     SUM           DSPLY
     C                   RESET                   SUM
     C                   EVAL      NAMESTR2=%CHAR(NUM1)
     C                   RESET                   SUM
     C                   EVAL      POS=%CHECK('P':NAMESTR)
     C                   RESET                   POS
     C                   EVAL      POS=%CHECKR('P':NAMESTR)
     C                   RESET                   POS
     C                   EVAL      DATE0=%DATE()
     C                   RESET                   DATE0
     C                   EVAL      DATE0=%DATE(20200623)
     c                   EVAL      DATE2=%DATE(DATE1:*MDY)
     C                   EVAL      DATE3=%DATE('111524':*MDY0)
     C                   EVAL      TODAY=%DATE()
     C                   EVAL      MYDATE=TODAY-%DAYS(7)
     C                   EVAL      MYDATE=TODAY-%MONTHS(7)
     C                   EVAL      MYDATE=TODAY-%YEARS(4)
     C                   EVAL      MYNUM1=%DEC(TODAY)
     C                   EVAL      MYNUM1=%DEC(TODAY:*YMD)
     C                   EVAL      DEC001=%DEC(CHAR001:10:2)
     C                   EVAL      DEC002=%DEC(CHAR001:7:3)
     C                   EVAL      DT1=%DATE(20220712 : *ISO)
     C                   EVAL      DT2=%DATE(240819 : *YMD)
     C                   EVAL      DAYS_DIFF=%DIFF(DT1:DT2:*DAYS)
     C                   EVAL      TT1=%TIME(2022354: *ISO)
     C                   EVAL      TT2=%TIME(1022356: *ISO)
     C                   EVAL      TIME_DIFF=%DIFF(TT1:TT2:*HOURS)
     C                   EVAL      TIME_DIFF=%DIFF(TT1:TT2:*MINUTES)
     C                   EVAL      TIME_DIFF=%DIFF(TT1:TT2:*SECONDS)
     c                   eval      trimedstr=%trim(namestr:'Y')
     C                   RESET                   TRIMEDSTR
     c                   eval      trimedstr=%trimL(namestr: ' ')
     C                   RESET                   TRIMEDSTR
     c                   eval      trimedstr=%trimR(namestr: ' ')
     C                   EVAL      TIMESTM=%TIMESTAMP()
     C                   EVAL      TIMESTM1 =%TIMESTAMP(20171005123454450456)
     C                   EVAL      *INLR = *ON
