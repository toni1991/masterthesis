       IDENTIFICATION DIVISION.
       PROGRAM-ID. SWITCH-CASE-EVALUATE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 AGE PIC 9(3).
           01 SEX PIC X(1).
                
       PROCEDURE DIVISION.
       MAIN.
           ACCEPT AGE.
           ACCEPT SEX.           
           EVALUATE AGE ALSO SEX
                WHEN 0 THRU 17 ALSO "M"
                WHEN 0 THRU 17 ALSO "m"
                    DISPLAY "Underage boy"
                WHEN 0 THRU 17 ALSO "F"
                WHEN 0 THRU 17 ALSO "f"
                    DISPLAY "Underage girl"
                WHEN 17 THRU 99 ALSO "M"
                WHEN 17 THRU 99 ALSO "m"
                    DISPLAY "Adult man"
                WHEN 17 THRU 99 ALSO "F"
                WHEN 17 THRU 99 ALSO "f"
                    DISPLAY "Adult woman"
                WHEN OTHER
                    DISPLAY "Unknown age or gender"
           END-EVALUATE.
           STOP RUN.

       END PROGRAM SWITCH-CASE-EVALUATE.