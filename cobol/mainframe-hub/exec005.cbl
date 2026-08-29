      *================================================================*
      *Este programa recebe 3 notas de um aluno, calcula a media e     *
      *informa:                                                        *
      *APROVADO se media >= 7                                          *   
      * RECUPERACAO se media entre 5 e 6.99                            *
      * REPROVADO se media < 5                                         *        
      *================================================================*
 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEC005.
       AUTHOR. ELIEL MIRANDA.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION. 
       SPECIAL-NAMES. 
           DECIMAL-POINT IS COMMA.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
         01 WS-NOME.
           05 WS-NOME-ALU        PIC X(30)    VALUE SPACES. 
         01 WS-NOTA.
           05 WS-NOTA1           PIC 9(02)V99 VALUE ZEROES.
           05 WS-NOTA2           PIC 9(02)V99 VALUE ZEROES.
           05 WS-NOTA3           PIC 9(02)V99 VALUE ZEROES.          
         01 WS-MEDIA.
           05 WS-MEDIA-ALU       PIC 9(02)V99 VALUE ZEROES.
         01 WS-SITUACAO.
           05 WS-SITUACAO-ALU    PIC X(15)    VALUE SPACES.
         01 WS-EDIT.
           05 WS-MEDIA-ALU-EDIT  PIC ZZ,99 VALUE ZEROES.
           
          
       PROCEDURE DIVISION.
       0000-INICIO.
           PERFORM 1000-ENTRADA
           PERFORM 2000-PROCESSAMENTO
           PERFORM 3000-SAIDA
              STOP RUN.

       1000-ENTRADA.
           DISPLAY 'INFORME O NOME DO ALUNO: '
              ACCEPT WS-NOME-ALU
           DISPLAY 'INFORME A PRIMEIRA NOTA: '
              ACCEPT WS-NOTA1
           DISPLAY 'INFORME A SEGUNDA NOTA: '
              ACCEPT WS-NOTA2
           DISPLAY 'INFORME A TERCEIRA NOTA: '
              ACCEPT WS-NOTA3.
                      
       2000-PROCESSAMENTO.
           COMPUTE WS-MEDIA-ALU ROUNDED =
                    (WS-NOTA1 + WS-NOTA2 + WS-NOTA3) / 3.
           
           EVALUATE TRUE
              WHEN WS-MEDIA-ALU >= 7
                 MOVE 'APROVADO' TO WS-SITUACAO-ALU

              WHEN WS-MEDIA-ALU  >=5
                 MOVE 'EM RECUPERACAO' TO WS-SITUACAO-ALU
              
              WHEN OTHER 
                 MOVE 'REPROVADO' TO WS-SITUACAO-ALU
           END-EVALUATE.

       3000-SAIDA.
           MOVE WS-MEDIA-ALU TO WS-MEDIA-ALU-EDIT
           DISPLAY
              'A MEDIA DO ALUNO: ' 
                 FUNCTION TRIM (WS-NOME-ALU TRAILING) 
                    ' EH:' WS-MEDIA-ALU-EDIT                    
           DISPLAY
              'SITUACAO: '
                 FUNCTION TRIM (WS-SITUACAO-ALU TRAILING) "!".
         

       
           
           



        
        


      