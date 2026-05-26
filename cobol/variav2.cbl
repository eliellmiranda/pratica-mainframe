       IDENTIFICATION DIVISION. 
       PROGRAM-ID. VARIAV2.
       ENVIRONMENT DIVISION.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
         01   WS-CLIENTE.
              05 WS-NOME-COMPLETO    PIC X(50).
              05 WS-ENDERECO.
                 10 WS-RUA           PIC X(40).
                 10 WS-NUMERO        PIC 9(04).
                 10 WS-BAIRRO        PIC X(20).
                 10 WS-ESTADO        PIC X(02).

       PROCEDURE DIVISION.
           STOP RUN.