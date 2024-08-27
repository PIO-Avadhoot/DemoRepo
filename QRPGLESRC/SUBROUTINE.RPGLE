     DNUM1             S              5S 2 INZ(234.57)
     DNUM2             S              5S 2 inz(345.78)
     DPRODUCT          S              8S 2 inz(000000.00)
      ** calling our subroutine
     C                   EXSR      PROD
     C                   SETON                                        LR
      ** SUBROUTINE DECLARATION **
     C     PROD          BEGSR
     C                   EVAL      PRODUCT = NUM1* NUM2
     C     PRODUCT       DSPLY
     C                   ENDSR

