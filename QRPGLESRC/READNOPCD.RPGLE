     FEMPDTL2   UF A E           K DISK
     c     *LOVAL        SETLL     EMPDTL2
     C                   READ      EMPDTL2
     C                   DOW       NOT %EOF(EMPDTL2)
     C     EMPID         DSPLY
     C     EMPNAME       DSPLY
     C     EMPDEPT       DSPLY
     C                   READ(N)   EMPDTL2
     C                   ENDDO
     C                   IF        %EOF(EMPDTL2)
     C     'END OF FILE' DSPLY
     C                   ENDIF
     C                   SETON                                          LR
