       IDENTIFICATION DIVISION.
       PROGRAM-ID. COPY-EVALUATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 INPUT-NUMBER PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT INPUT-NUMBER.
           COPY COPYBOOK-EVALUATE REPLACING VAR BY INPUT-NUMBER.
           STOP RUN.
       END PROGRAM COPY-EVALUATE.