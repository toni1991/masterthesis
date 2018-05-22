       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-EXAMPLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(2).
       01 TARGET-STRING PIC X(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE SECTION.
             ACCEPT NUM.
             COMPUTE NUM = NUM * 2
               ON SIZE ERROR DISPLAY "The value could not be doubled."
               STOP RUN
             END-COMPUTE.
             DISPLAY "Doubled number: " NUM.
             STRING 'This is a little too long' DELIMITED BY SIZE
             INTO TARGET-STRING
             ON OVERFLOW DISPLAY "The string is too long!".
             STOP RUN.
       END PROGRAM IF-EXAMPLE.