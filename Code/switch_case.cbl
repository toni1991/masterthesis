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
           01 DISPLAY-MESSAGE PIC X(30) VALUE SPACES.
                
       PROCEDURE DIVISION.
       MAIN.
           ACCEPT AGE.
           ACCEPT SEX.           
           PERFORM EVALUATE-1.
      *    PERFORM EVALUATE-2.
           DISPLAY DISPLAY-MESSAGE.
           STOP RUN.

       EVALUATE-1.
           EVALUATE TRUE ALSO TRUE
                WHEN IS-UNDERAGE ALSO IS-MALE
                    MOVE "Underage boy" TO DISPLAY-MESSAGE
                WHEN AGE < 18 ALSO SEX = "F"
                    MOVE "Underage girl" TO DISPLAY-MESSAGE
                WHEN IS-ADULT ALSO IS-MALE
                    MOVE "Adult man" TO DISPLAY-MESSAGE
                WHEN AGE >= 18 ALSO SEX = "F"
                    MOVE "Adult woman" TO DISPLAY-MESSAGE
                WHEN OTHER
                    MOVE "Unknown age or gender." TO DISPLAY-MESSAGE
           END-EVALUATE.

       EVALUATE-2.
           EVALUATE AGE ALSO SEX
                WHEN 0 THRU 17 ALSO "M"
                    MOVE "Underage boy" TO DISPLAY-MESSAGE
                WHEN 0 THRU 17 ALSO "F"
                    MOVE "Underage girl" TO DISPLAY-MESSAGE
                WHEN 17 THRU 999 ALSO "M"
                    MOVE "Adult man" TO DISPLAY-MESSAGE
                WHEN 17 THRU 999 ALSO "F"
                    MOVE "Adult woman" TO DISPLAY-MESSAGE
                WHEN OTHER
                    MOVE "Unknown age or gender." TO DISPLAY-MESSAGE
           END-EVALUATE.

       END PROGRAM SWTICH-CASE-EVALUATE.
