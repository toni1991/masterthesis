       IDENTIFICATION DIVISION.
       PROGRAM-ID. SET-EXAMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 SET-STORAGE PIC 9(3) OCCURS 100 TIMES INDEXED BY S-IDX.
           01 SET-NIL-VALUE PIC 9(3) VALUE 0.
           01 SET-SIZE PIC 9(3) VALUE 000.
           01 I-VAL PIC 9(3).
           01 D-VAL PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM INIT-SET.
           PERFORM PRINT-SET.
           MOVE 2 TO I-VAL. PERFORM INSERT-VALUE. PERFORM PRINT-SET.
           MOVE 4 TO I-VAL. PERFORM INSERT-VALUE. PERFORM PRINT-SET.
           MOVE 2 TO I-VAL. PERFORM INSERT-VALUE. PERFORM PRINT-SET.
           MOVE 4 TO D-VAL. PERFORM DELETE-VALUE. PERFORM PRINT-SET.
           STOP RUN.

       INIT-SET SECTION.
           PERFORM VARYING S-IDX FROM 1 BY 1 UNTIL S-IDX = 100
               MOVE SET-NIL-VALUE TO SET-STORAGE(S-IDX)
           END-PERFORM.     

       INSERT-VALUE SECTION.
       SEARCH-EQUAL-VALUE.
           PERFORM VARYING S-IDX FROM 1 BY 1
           UNTIL S-IDX = 100 OR I-VAL = SET-NIL-VALUE
               IF SET-STORAGE(S-IDX) = I-VAL THEN
                   SET I-VAL TO SET-NIL-VALUE
               END-IF
           END-PERFORM.
       INSERT-IF-NOT-ALREADY-PRESENT.
           PERFORM VARYING S-IDX FROM 1 BY 1
           UNTIL S-IDX = 100 OR I-VAL = SET-NIL-VALUE
               IF SET-STORAGE(S-IDX) = SET-NIL-VALUE THEN
                   MOVE I-VAL TO SET-STORAGE(S-IDX)
                   SET I-VAL TO SET-NIL-VALUE
                   COMPUTE SET-SIZE = SET-SIZE + 1
               END-IF
           END-PERFORM.
       INSERT-VALUE-EXIT.
           EXIT.

       DELETE-VALUE SECTION.
           PERFORM VARYING S-IDX FROM 1 BY 1
               UNTIL S-IDX = 100 OR D-VAL = SET-NIL-VALUE
                   IF SET-STORAGE(S-IDX) = D-VAL THEN
                       SET SET-STORAGE(S-IDX) TO SET-NIL-VALUE
                       SET D-VAL TO SET-NIL-VALUE
                       COMPUTE SET-SIZE = SET-SIZE - 1
                   END-IF
           END-PERFORM.

       PRINT-SET SECTION.
           PERFORM VARYING S-IDX FROM 1 BY 1 UNTIL S-IDX = 100
               IF NOT SET-STORAGE(S-IDX) = SET-NIL-VALUE THEN
                   DISPLAY SET-STORAGE(S-IDX)"," WITH NO ADVANCING
               END-IF
           END-PERFORM.
           DISPLAY "SIZE: " SET-SIZE.
           
       END PROGRAM SET-EXAMPLE.