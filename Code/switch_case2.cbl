       IDENTIFICATION DIVISION.
       PROGRAM-ID. SWTICH-CASE-EVALUATE.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 FIRST-NUM PIC 9(2).
           01 SECOND-NUM PIC 9(2).
           
       PROCEDURE DIVISION.
       MAIN.
           ACCEPT FIRST-NUM.
           ACCEPT SECOND-NUM.
           EVALUATE TRUE
               WHEN FIRST-NUM EQUALS SECOND-NUM
                   DISPLAY "Both numbers are equal"
               WHEN FIRST-NUM > SECOND-NUM*2 OR FIRST-NUM*2 < SECOND-NUM
                   DISPLAY "One number is more then twice the other"
               WHEN FIRST-NUM < SECOND-NUM
                   DISPLAY "The first number is lower"
               WHEN FIRST-NUM > SECOND-NUM
                   DISPLAY "The first number is greater"
           END-EVALUATE.
           STOP RUN.
