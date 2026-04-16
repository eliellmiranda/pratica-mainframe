      *Leia dois números e informe qual deles é o maior.
      * Se forem iguais, mostrar mensagem apropriada.

       IDENTIFICATION DIVISION. 
       PROGRAM-ID. MAIOR-NUM.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMEROS.
           05 NUM-1 PIC 9(4).
           05 NUM-2 PIC 9(4).
       01 RESULTADO.
           05 MAIOR-NUM PIC 9(4).
      
       PROCEDURE DIVISION.

           PERFORM 001-MAIOR.
           

       001-MAIOR.
           DISPLAY 'DIGITE O PRIMEIRO NUMERO: '. 
              ACCEPT NUM-1.
           DISPLAY 'DIGITE O SEGUNDO NUMERO: '.
              ACCEPT NUM-2.

           EVALUATE TRUE
               WHEN NUM-1 IS GREATER THAN NUM-2
                 MOVE NUM-1 TO MAIOR-NUM
                 DISPLAY 'O MAIOR NUMERO EH: ' MAIOR-NUM
               WHEN NUM-2 IS GREATER THAN NUM-1
                 MOVE NUM-2 TO MAIOR-NUM
                 DISPLAY 'O MAIOR NUMERO EH: ' MAIOR-NUM
               WHEN OTHER
                 DISPLAY "OS DOIS NUMEROS SAO IGUAIS" 
           END-EVALUATE.     

           STOP RUN.
      

           


      
       