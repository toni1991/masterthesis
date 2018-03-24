       IDENTIFICATION DIVISION.
       PROGRAM-ID. EIGHTYEIGHT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 AGE PIC 9(2) VALUE 13.
               88 ISUNDERAGE VALUE 0 THRU 17.
               88 ISADULT VALUE 18 THRU 99.

       PROCEDURE DIVISION.
       MAIN.
           IF ISUNDERAGE THEN
               DISPLAY 'Person is underage (AGE = 'AGE')'
           ELSE
               DISPLAY 'Person is adult'
           END-IF.
           SET ISADULT TO TRUE       
           DISPLAY 'AGE = ' AGE.
           STOP RUN.
           
       END PROGRAM EIGHTYEIGHT.