       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARAGRAPH-SECTION-CONTROL-FLOW.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Calling section:".
           PERFORM TEST-SECTION.
           DISPLAY SPACE.
           DISPLAY "Calling paragraphs with PERFORM THRU:".
           PERFORM FIRST-TEST-PARAGRAPH THRU THIRD-TEST-PARAGRAPH.
           DISPLAY SPACE.
           DISPLAY "Calling paragraph:".
           PERFORM FIRST-TEST-PARAGRAPH.
           
           STOP RUN.
       
       TEST-SECTION SECTION.
       FIRST-TEST-PARAGRAPH.
           DISPLAY "1" WITH NO ADVANCING.
           
       SECOND-TEST-PARAGRAPH.
           DISPLAY "2" WITH NO ADVANCING.
       
       THIRD-TEST-PARAGRAPH.
           DISPLAY "3" WITH NO ADVANCING.
           
            
       END PROGRAM PARAGRAPH-SECTION-CONTROL-FLOW.