      *================================================================*
      *Este programa calcula o fatorial de um numero                   *
      *================================================================*
      
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. EXEC008.
       AUTHOR. ELIEL MIRANDA.

       ENVIRONMENT DIVISION. 

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 NUMERO.
           05 WS-NUMERO         PIC 9(04) VALUE ZEROES.
           05 WS-NUMERO-EDIT    PIC Z(04).
       01 FATORIAL.
           05 WS-N              PIC 9(04) VALUE ZEROES.
           05 WS-FATORIAL       PIC 9(20) VALUE 1.
           05 WS-FATORIAL-EDIT  PIC Z(20).

             
          

       PROCEDURE DIVISION.
           DISPLAY 'INFORME UM NUMERO: '
           ACCEPT WS-NUMERO.           

           PERFORM VARYING WS-N FROM 1 BY 1
                     UNTIL WS-N > WS-NUMERO
              COMPUTE WS-FATORIAL = WS-FATORIAL * WS-N              
           END-PERFORM.

           MOVE WS-NUMERO TO WS-NUMERO-EDIT.
           MOVE WS-FATORIAL TO WS-FATORIAL-EDIT.
           

           DISPLAY 'O FATORIAL DE ' WS-NUMERO-EDIT
                            ' EH: ' WS-FATORIAL-EDIT.

           STOP RUN.

       


     

