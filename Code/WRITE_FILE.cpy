       WRITE-FILE SECTION.
           DISPLAY "Write to file:".
           OPEN EXTEND RecordFile.
           DISPLAY "AGE FIRSTNAME SURNAME"
           ACCEPT PERSON.
           WRITE PERSON.
           CLOSE RecordFile.
