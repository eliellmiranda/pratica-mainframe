      *================================================================*
      *Este programa recebe um numero inteiro e infoma se ele eh par ou*
      *impar                                                           *
      *================================================================*
 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEC004.
       AUTHOR. ELIEL MIRANDA.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
          01 NUMERO.
             05 WS-NUMERO            PIC 9(05) VALUE ZEROES.   
             05 WS-RESTO             PIC 9(04) VALUE ZEROES.   
          01 EDIT.
             05 WS-NUMERO-EDIT       PIC Z(05) VALUE ZEROES.

       PROCEDURE DIVISION.
       0000-INICIO.
           PERFORM 1000-ENTRADA
           PERFORM 2000-PROCESSAMENTO-E-SAIDA
              STOP RUN.

       1000-ENTRADA.
           DISPLAY 'INFORME UM NUMERO: '
           ACCEPT WS-NUMERO.

       2000-PROCESSAMENTO-E-SAIDA.
           COMPUTE WS-RESTO = FUNCTION MOD(WS-NUMERO, 2).
              MOVE WS-NUMERO TO WS-NUMERO-EDIT.

           IF WS-RESTO = 0
              DISPLAY 'O NUMERO: '
                       FUNCTION TRIM (WS-NUMERO-EDIT LEADING)
                       ' EH PAR!'
           ELSE
              DISPLAY 'O NUMERO: '
                       FUNCTION TRIM (WS-NUMERO-EDIT LEADING)
                       ' EH IMPAR!'.           


      