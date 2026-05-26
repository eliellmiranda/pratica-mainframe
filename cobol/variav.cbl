       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAV.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 CONTA.
           05 NOME-CLI   PIC A(40).
           05 CPF-CLI    PIC 9(11)  VALUE ZEROS.
           05 SALDO-CLI  PIC 9(5)V99.
           05 AG-CLI     PIC A(2).
       
       
       PROCEDURE DIVISION.
           STOP RUN.