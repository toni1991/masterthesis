       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNION-PROGRAM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUMBER-GROUP.
               05 FIRST-NUMBER PIC 9(4) VALUE 1907.
               05 SECOND-NUMBER PIC 9(2) VALUE 42.
           01 NEW-NUMBER REDEFINES NUMBER-GROUP PIC 9(4)V9(2).
               
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "INTEGER: " NUMBER-GROUP.
           DISPLAY "DECIMAL: " NEW-NUMBER.
           CALL "UNION-SUB-PROGRAM" USING NUMBER-GROUP.
           STOP RUN.
           
       END PROGRAM UNION-PROGRAM.