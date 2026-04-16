       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRO-SOMA.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMEROS.
           05 NUM-1 PIC 9(3) VALUE ZERO.
           05 NUM-2 PIC 9(3) VALUE ZERO.
       01 RESULTADO.
           05 RESULT PIC 9(4) VALUE ZERO.
       
       PROCEDURE DIVISION.
           PERFORM 001.
           STOP RUN.
       
       001.
           MOVE 5 TO NUM-1.
           MOVE 10 TO NUM-2.
           ADD NUM-1 NUM-2 GIVING RESULT.
           DISPLAY 'RESULTADO DA SOMA: ' RESULT.
       
