       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-CONTROL-FLOW.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 INPUT-NUMBER PIC 9.
               88 IS-ZERO VALUE 0.
               
       PROCEDURE DIVISION.
       MAIN-PARAGRAPH.
           DISPLAY "Main paragraph".
           PERFORM SECOND-PARAGRAPH.
           DISPLAY "Main paragraph again".
           IF IS-ZERO THEN
               STOP RUN
           END-IF.
           
       SECOND-PARAGRAPH.
           DISPLAY "Enter some number: " WITH NO ADVANCING.
           ACCEPT INPUT-NUMBER.
       END PROGRAM SIMPLE-CONTROL-FLOW.