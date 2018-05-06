       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILES.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT RecordFile 
          ASSIGN TO "recordFile.txt"
          ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD RecordFile.
       COPY "PersonData".
           
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM READ-FILE.
       
       READ-FILE SECTION.
           OPEN INPUT RecordFile.   
           PERFORM UNTIL EOF
               READ RecordFile
                   AT END SET EOF TO TRUE
               END-READ
               IF EOF
                   EXIT PERFORM CYCLE
               END-IF
               DISPLAY "Age: " AGE SPACE "Name: " SURNAME ", " FIRSTNAME
           END-PERFORM.
           CLOSE RecordFile.
     
       END PROGRAM FILES.