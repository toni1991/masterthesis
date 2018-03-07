       IDENTIFICATION DIVISION.
       PROGRAM-ID. SWTICH-CASE-EVALUATE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 AGE PIC 9(3).
              88 IS-UNDERAGE VALUE 0 THRU 17.
              88 IS-ADULT VALUE 18 THRU 999.
           01 SEX PIC X(1).
              88 IS-MALE VALUE "M".
              88 IS-FEMALE VALUE "F".
                
       PROCEDURE DIVISION.
       MAIN.
           ACCEPT AGE.
           ACCEPT SEX.
           EVALUATE TRUE ALSO TRUE
                WHEN IS-UNDERAGE ALSO IS-MALE
                    DISPLAY "Underage boy"
                WHEN AGE < 18 ALSO SEX = "F"
                    DISPLAY "Underage girl"
                WHEN IS-ADULT ALSO IS-MALE
                    DISPLAY "Adult man"
                WHEN AGE >= 18 ALSO SEX = "F"
                    DISPLAY "Adult woman"
                WHEN OTHER
                    DISPLAY "Unknown age or gender."
           END-EVALUATE.
           STOP RUN.

       END PROGRAM SWTICH-CASE-EVALUATE.
