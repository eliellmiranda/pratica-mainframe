      *================================================================*
      *Este programa le dois numeros inteiros e informa qual deles eh  *
      *o maior e caso sejam iguais, informar                           *
      *================================================================*

       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEC003.
       AUTHOR. ELIEL MIRANDA.
      
       ENVIRONMENT DIVISION.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 NUMEROS.
           05 WS-NUM-1 PIC 9(03) VALUE ZEROES.
           05 WS-NUM-2 PIC 9(03) VALUE ZEROES.
       01 NUM-EDIT.
           05 WS-NUM-1-EDIT PIC Z(03).
           05 WS-NUM-2-EDIT PIC Z(03). 
       01 RESULT.
           05 WS-MAIOR PIC Z(03) VALUE ZEROES. 

       PROCEDURE DIVISION.
       0000-INICIO.
           PERFORM 1000-ENTRADA.
           PERFORM 2000-PROCESSAMENTO.
           
       1000-ENTRADA.
           DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
           ACCEPT WS-NUM-1
           DISPLAY 'DIGITE O SEGUNDO NUMERO: '
           ACCEPT WS-NUM-2.

       2000-PROCESSAMENTO.
           EVALUATE TRUE
              WHEN WS-NUM-1 = WS-NUM-2
                 PERFORM 3100-IGUAL

              WHEN WS-NUM-1 > WS-NUM-2
                 MOVE WS-NUM-1 TO WS-MAIOR

              WHEN OTHER 
                 MOVE WS-NUM-2 TO WS-MAIOR
           END-EVALUATE.

           PERFORM 3200-MAIOR.
      
       3100-IGUAL.
           DISPLAY 'OS NUMEROS SAO IGUAIS!'.
           STOP RUN.
       3200-MAIOR.
           DISPLAY 'O MAIOR NUMERO EH: ' WS-MAIOR.
           STOP RUN.

       

              


         

            