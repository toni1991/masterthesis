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
            PERFORM WRITE-FILE.
            PERFORM READ-FILE.
            STOP RUN.

       COPY "WRITE_FILE".

       COPY "READ_FILE".

       END PROGRAM FILES.
