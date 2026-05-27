       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX0201.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
        01 WS-CLIENTE.
           05 WS-NOME        PIC X(40).
           05 WS-CPF         PIC X(11).
           05 WS-SALDO       PIC S9(13)V99 COMP-3.
           05 WS-AGENCIA     PIC 9(04).

       PROCEDURE DIVISION.