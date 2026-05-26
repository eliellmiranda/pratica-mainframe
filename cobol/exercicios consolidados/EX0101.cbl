       IDENTIFICATION DIVISION. 
       PROGRAM-ID. EX0101.
       AUTHOR.     ELIEL MIRANDA.
      *----------------------------------------------------------------*
      *  EX0101 - HELLO WORLD BANCARIO                                 *
      *----------------------------------------------------------------* 
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION. 
       SOURCE-COMPUTER. IBM-ZOS.
       OBJECT-COMPUTER. IBM-ZOS.

       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01 WS-MENSAGEM    PIC X(40)
                          VALUE 'BANCO EMUNAH - SISTEMA ONLINE'.

       PROCEDURE DIVISION.
       0000-PRINCIPAL.
           DISPLAY WS-MENSAGEM
           GOBACK.
           