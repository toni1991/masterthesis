       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXIT-PERFORM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE SECTION.
           PERFORM EXIT-PERFORM.
           PERFORM EXIT-PERFORM-CYCLE.
           STOP RUN.
            
       EXIT-PERFORM SECTION.
           MOVE 0 TO NUM.
           PERFORM VARYING NUM FROM 0 BY 1 UNTIL NUM = 10
              EXIT PERFORM 
              DISPLAY "This is omitted!"
           END-PERFORM.
           DISPLAY NUM.
       
       EXIT-PERFORM-CYCLE SECTION.
           MOVE 0 TO NUM.
           PERFORM VARYING NUM FROM 0 BY 1 UNTIL NUM = 10
              EXIT PERFORM CYCLE
              DISPLAY "This is omitted!"
           END-PERFORM.
           DISPLAY NUM.
       
       END PROGRAM EXIT-PERFORM.