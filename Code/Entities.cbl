       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTITIES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PERSON OCCURS 4 TIMES INDEXED BY P-IDX.
           05 FIRSTNAME PIC X(6).
           05 SURNAME PIC X(6).
           05 PARTNER-IDX PIC 9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM SET-PARTNER.
            PERFORM PRINT-PARTNER.
            STOP RUN.

       SET-PARTNER SECTION.
           MOVE "  Anna  Wolf3" TO PERSON(1).
           MOVE "Hubert Mayer4" TO PERSON(2).
           MOVE "  Olaf  Wolf1" TO PERSON(3).
           MOVE "Ursula Mayer2" TO PERSON(4).

       PRINT-PARTNER SECTION.
           PERFORM VARYING P-IDX FROM 1 BY 1 UNTIL P-IDX = 5
               DISPLAY FIRSTNAME(P-IDX)" "SURNAME(P-IDX)
                   " is married with "
                   FIRSTNAME(PARTNER-IDX(P-IDX))" "
                   SURNAME(PARTNER-IDX(P-IDX))
           END-PERFORM.

       END PROGRAM ENTITIES.