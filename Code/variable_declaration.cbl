       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLE-EXAMPLE RECURSIVE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PERSON-DATA.
           05 PERSON-NAME PIC X(10) VALUE "Mustermann".
           05 FILLER PIC X VALUE SPACE.
           05 PERSON-HEIGHT-CM PIC 9(3) VALUE 178.
           05 PERSON-HEIGHT-M REDEFINES PERSON-HEIGHT-CM PIC 9V99.                    
       PROCEDURE DIVISION.
           DISPLAY PERSON-DATA.
           DISPLAY PERSON-NAME.
           DISPLAY PERSON-HEIGHT-CM.
           DISPLAY PERSON-HEIGHT-M.
       END PROGRAM VARIABLE-EXAMPLE.