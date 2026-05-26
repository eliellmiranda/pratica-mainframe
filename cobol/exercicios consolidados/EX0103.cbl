       IDENTIFICATION DIVISION. 
       PROGRAM-ID. EX0103.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *Persistente entre chamadas, inicializando uma vez por execucao
       01 WS-CONTADOR        PIC 9(05) VALUE ZERO.

       LOCAL-STORAGE SECTION.
      *Reinicializado a cada chamada (util em programas recursivos/cics)
       01 LS-TEMPORATIO      PIC X(20) VALUE SPACES.

       LINKAGE SECTION.
      *Parametros vindos do programa chamador
       01 LK-PARAMETROS.
          05 LK-CPF          PIC 9(11).
          05 LK-RETORNO      PIC 9(02).

          

      



