       IDENTIFICATION DIVISION.
       PROGRAM-ID. VALUE-DEFAULT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 ERROR-MESSAGE PIC X(50) VALUE SPACE.
               88 FIRST-ERROR VALUE "The first error occured!". 
               88 SECOND-ERROR VALUE "The second error occured!". 
               88 THIRD-ERROR VALUE "The third error occured!". 

       PROCEDURE DIVISION.
       MAIN.
           SET SECOND-ERROR TO TRUE.
           DISPLAY ERROR-MESSAGE.
           STOP RUN.

       END PROGRAM VALUE-DEFAULT.
