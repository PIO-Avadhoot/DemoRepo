     FEMPDTL2   UF A E           K DISK    USROPN
     DEMPID            S              5S 0 INZ(121)
     C     EMPID         SETLL     EMPDTL2                                66
     C                   EXSR      #ERRORBUG
     C                   EVAL      EMPNAME = 'ARPIT VERMA'
     C                   UPDATE    EMPDTLR                                66
     C                   SETON                                          LR
     ****
     C     #ERRORBUG     BEGSR
     C                   IF        *IN66 = *ON
     C                   IF        %STATUS(EMPDTL2)=1211
     C                   OPEN      EMPDTL2
     C                   ELSEIF    %STATUS(EMPDTL2)=1221
     C                   READ(E)   EMPDTL2
     C                   EVAL      EMPNAME='ARPIT VERMA'
     C                   UPDATE(E) EMPDTLR
     C                   ENDIF
     C                   ENDIF
     C                   ENDSR
