       IDENTIFICATION DIVISION.
       PROGRAM-ID. COPY-EXAMPLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY COPYBOOK
              REPLACING ERR-MSG            BY MSG
                        "Error 1 occured"  BY "First error occured!".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE ERROR-MESSAGES-INIT-VALUES TO ERROR-MESSAGES.
           ACCEPT MSG-INDEX.
           DISPLAY MSG(MSG-INDEX).
           STOP RUN.
       END PROGRAM COPY-EXAMPLE.