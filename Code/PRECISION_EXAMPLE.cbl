       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRECISION-EXAMPLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 TWO-DECIMALS-VALUE PIC 9V9(2) VALUE 0.50.
           01 THREE-DECIMALS-VALUE PIC 9V9(3) VALUE 0.499.
           01 RESULT PIC 9V9(2) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            COMPUTE RESULT = 
               TWO-DECIMALS-VALUE + THREE-DECIMALS-VALUE.
            DISPLAY RESULT.
            COMPUTE RESULT ROUNDED =
               TWO-DECIMALS-VALUE + THREE-DECIMALS-VALUE.
            DISPLAY RESULT.
            STOP RUN.

       END PROGRAM PRECISION-EXAMPLE.
