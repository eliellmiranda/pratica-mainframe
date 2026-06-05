      *================================================================*
      *Este programa le dois numeros inteiros, soma e mostra o         *
      *resultado                                                       *
      *================================================================*
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. EXEC002. 
       AUTHOR. ELIEL MIRANDA.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 NUMEROS.
           05 NUM-1  PIC 9(02) VALUE ZEROES.
           05 NUM-2  PIC 9(02) VALUE ZEROES.
           05 RESULT PIC 9(03) VALUE ZEROES.
       01 EDIT.
           05 RESULT-EDIT PIC Z(03) VALUE SPACES.
           
       PROCEDURE DIVISION.
       0000-INICIO.
           PERFORM 1000-ENTRADA
           PERFORM 2000-PROCESSAMENTO
           PERFORM 3000-SAIDA
           STOP RUN.          
           
       1000-ENTRADA.
           DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
           ACCEPT NUM-1
           DISPLAY 'DIGITE O SEGUNDO NUMERO: '
           ACCEPT NUM-2.

       2000-PROCESSAMENTO.
           COMPUTE RESULT = NUM-1 + NUM-2.
           MOVE RESULT TO RESULT-EDIT.

       3000-SAIDA.
           DISPLAY 'RESULTADO DA SOMA: ' RESULT-EDIT.
