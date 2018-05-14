       READ-FILE SECTION.
           DISPLAY "Read from file:".
           OPEN INPUT RecordFile.
           PERFORM UNTIL EOF
               READ RecordFile AT END SET EOF TO TRUE
               END-READ
               IF EOF EXIT PERFORM CYCLE
               END-IF
               DISPLAY "Age: " AGE SPACE "Name: " SURNAME ", " FIRSTNAME
           END-PERFORM.
           CLOSE RecordFile.
