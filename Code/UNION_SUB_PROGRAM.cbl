       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNION-SUB-PROGRAM.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PASSED-VALUE PIC 9(3)V9(3).
       PROCEDURE DIVISION USING PASSED-VALUE.
       MAIN-PROCEDURE.
           DISPLAY "UNION-SUB-PROGRAM: " PASSED-VALUE.
           GOBACK.           
       END PROGRAM UNION-SUB-PROGRAM.