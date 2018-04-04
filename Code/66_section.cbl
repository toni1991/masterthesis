       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL-RENAMES-EXAMPLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 PERSON-DATA.
           05 FIRST-NAME PIC X(10) VALUE "Max". 
           05 SURNAME PIC X(10) VALUE "Mustermann". 
           05 STREET PIC X(15) VALUE "Musterstraße". 
           05 HOUSENUMBER PIC X(5) VALUE "7a". 
           05 ZIP-CODE PIC X(6) VALUE "12345". 
           05 CITY PIC X(15) VALUE "Musterstadt". 
           
       66 PERSON-NAME RENAMES FIRST-NAME THRU SURNAME.
       66 PERSON-ADDRESS RENAMES STREET THRU CITY.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY PERSON-NAME.
            DISPLAY PERSON-ADDRESS.
            STOP RUN.
            
       END PROGRAM COBOL-RENAMES-EXAMPLE.