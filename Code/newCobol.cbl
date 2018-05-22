       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO_USER.                          
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 USERNAME PIC X(20) VALUE SPACES.      
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Your name: " WITH NO ADVANCING.    
            ACCEPT USERNAME.                            
            IF USERNAME EQUALS SPACES                   
                MOVE "world" TO USERNAME                
            END-IF.                                     
            DISPLAY "Hello " USERNAME.                  
            STOP RUN.
       END PROGRAM HELLO_USER.                          