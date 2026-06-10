      *================================================================*
      *Este programa mostra na tela os números de 1 até 100            *
      *================================================================*

       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEX007.
       AUTHOR. ELIEL MIRANDA.

       ENVIRONMENT DIVISION.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
         01 WS-I PIC 9(03) VALUE ZEROES.

       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1
           UNTIL WS-I > 100
           DISPLAY WS-I 
           END-PERFORM.
           STOP RUN.
