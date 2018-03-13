       IDENTIFICATION DIVISION.
       PROGRAM-ID. LIST-EXAMPLE.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 LIST PIC 9(3) OCCURS 99 TIMES INDEXED BY L-IDX.
           01 D-IDX PIC 9(2).
           01 D-IDX-COUNT PIC 9(2).
           01 D-IDX-COUNT-TMP PIC 9(2).
           01 P-IDX PIC 9(2).
           01 I-VAL PIC 9(3).
           
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM PRINT-LIST.
           MOVE 2 TO I-VAL. PERFORM INSERT-VALUE. PERFORM PRINT-LIST.
           MOVE 4 TO I-VAL. PERFORM INSERT-VALUE. PERFORM PRINT-LIST.
           MOVE 1 TO D-IDX. PERFORM DELETE-VALUE. PERFORM PRINT-LIST.
           STOP RUN.
           
       INSERT-VALUE SECTION.
           MOVE I-VAL TO LIST(L-IDX).
           IF L-IDX < 99 THEN
               COMPUTE L-IDX = L-IDX + 1
           END-IF.
            
       DELETE-VALUE SECTION.
           IF D-IDX <= 99 THEN 
               COMPUTE L-IDX = L-IDX - 1
               PERFORM VARYING D-IDX-COUNT 
                  FROM D-IDX BY 1 
                  UNTIL D-IDX-COUNT = L-IDX
                       COMPUTE D-IDX-COUNT-TMP = D-IDX-COUNT + 1
                       MOVE LIST(D-IDX-COUNT-TMP) TO LIST(D-IDX-COUNT)
               END-PERFORM
           END-IF.
           
       PRINT-LIST SECTION.
           PERFORM VARYING P-IDX FROM 1 BY 1 UNTIL P-IDX = L-IDX
                   DISPLAY LIST(P-IDX)"," WITH NO ADVANCING
           END-PERFORM.
           COMPUTE P-IDX = L-IDX - 1.
           DISPLAY " SIZE: " P-IDX.
           
       END PROGRAM LIST-EXAMPLE.