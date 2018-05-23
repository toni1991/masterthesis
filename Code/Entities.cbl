       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTITIES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PERSON OCCURS 4 TIMES INDEXED BY PE-IDX.
           05 FNAME PIC X(6).
           05 SNAME PIC X(6).
           05 PA-IDX PIC 9.
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
           PERFORM VARYING PE-IDX FROM 1 BY 1 UNTIL PE-IDX = 5
               DISPLAY FNAME(PE-IDX)" "SNAME(PE-IDX)
                   " is married to "
                   FNAME(PA-IDX(PE-IDX))" "SNAME(PA-IDX(PE-IDX))
           END-PERFORM.
       END PROGRAM ENTITIES.