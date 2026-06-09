      *================================================================*
      *Este programa lê um número e exibe sua tabuada de 1 a 10.       *
      *================================================================*

       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEC007.

       ENVIRONMENT DIVISION.
       DATA DIVISION. 
       
       WORKING-STORAGE SECTION. 
         01 WS-NUMERO         PIC 9(02) VALUE ZEROES.
         01 WS-I              PIC 9(02) VALUE ZEROES.
         01 WS-RESULT         PIC 9(03) VALUE ZEROES.
         01 WS-NUMERO-EDIT    PIC ZZ    VALUE SPACES.
         01 WS-I-EDIT         PIC ZZ    VALUE SPACES.
         01 WS-RESULT-EDIT    PIC ZZZ   VALUE SPACES.

       PROCEDURE DIVISION.
           
           DISPLAY 'INFORME UM NUMERO: '
           ACCEPT WS-NUMERO

           PERFORM VARYING WS-I FROM 1 BY 1
              UNTIL WS-I > 10

              COMPUTE WS-RESULT = WS-NUMERO * WS-I

              MOVE WS-NUMERO    TO WS-NUMERO-EDIT
              MOVE WS-I         TO WS-I-EDIT
              MOVE WS-RESULT    TO WS-RESULT-EDIT

              DISPLAY
                  WS-NUMERO-EDIT
                  ' X '
                  FUNCTION TRIM (WS-I-EDIT LEADING)
                  ' = '
                  FUNCTION TRIM (WS-RESULT-EDIT LEADING)  
           
           END-PERFORM.
           
       STOP-RUN.
 



      