       IDENTIFICATION DIVISION.
       PROGRAM-ID. EIGHTYEIGHT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 VAR PIC 9(2) VALUE 20.
               88 ISLOWERTEN VALUE 0 THRU 9.

       PROCEDURE DIVISION.
       MAIN.
           IF ISLOWERTEN
           THEN
               DISPLAY 'VAR is lower 10.'
           ELSE
               DISPLAY 'VAR is over 10.'
           END-IF.
           
           SET ISLOWERTEN TO TRUE.
           
           DISPLAY 'VAR = ' VAR.
               
           STOP RUN.
           
       END PROGRAM EIGHTYEIGHT.