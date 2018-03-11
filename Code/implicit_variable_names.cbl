       IDENTIFICATION DIVISION.
       PROGRAM-ID. IMPLICIT-VARIABLE-NAMES.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 INPUT-NUMBER PIC 9(2).
           
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT INPUT-NUMBER.
           IF INPUT-NUMBER >= 10 AND <= 20 THEN
               DISPLAY "Your number is >= 10 and <= 20."
           ELSE 
               DISPLAY "Your number is < 10 or > 20."
           END-IF.
           STOP RUN.
               
       END PROGRAM IMPLICIT-VARIABLE-NAMES.