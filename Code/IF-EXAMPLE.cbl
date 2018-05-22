       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-EXAMPLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VAR PIC 9.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE SECTION.
           ACCEPT VAR.
           PERFORM END-IF-EXAMPLE.
           ACCEPT VAR.            
           PERFORM PERIOD-IF-EXAMPLE.
           STOP RUN.
       END-IF-EXAMPLE SECTION.
            IF VAR = 0
                DISPLAY "VAR = 0"
            ELSE
                DISPLAY "VAR != 0"
            END-IF. 
       PERIOD-IF-EXAMPLE SECTION.
            IF VAR = 0
                DISPLAY "VAR = 0"
            ELSE 
                DISPLAY "VAR != 0".
       END PROGRAM IF-EXAMPLE.