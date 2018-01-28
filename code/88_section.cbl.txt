       IDENTIFICATION DIVISION.
       PROGRAM-ID. EIGHTYEIGHT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 VAR PIC 9(2) VALUE 5.
               88 ISLOWERTEN VALUE 0 THRU 9.

       PROCEDURE DIVISION.
       MAIN.
           IF ISLOWERTEN
           THEN 
               DISPLAY 'Variable is lower 10.'
           ELSE
               DISPLAY 'Variable is over 10.'
           END-IF.
           STOP RUN.
           
       END PROGRAM EIGHTYEIGHT.
