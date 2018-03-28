            IDENTIFICATION DIVISION.
            PROGRAM-ID. FACULTY RECURSIVE.
            
            DATA DIVISION.
            WORKING-STORAGE SECTION.
               01 WS-NUMBER PIC 9(4) VALUE 5.
               01 WS-PRODUCT PIC 9(4) VALUE 0.
            LOCAL-STORAGE SECTION.
               01 LS-NUMBER PIC 9(4).
               
            PROCEDURE DIVISION.
                IF WS-NUMBER = 0
                    MOVE 1 TO WS-PRODUCT
                ELSE
                    MOVE WS-NUMBER TO LS-NUMBER
                    COMPUTE WS-NUMBER = WS-NUMBER - 1
                    CALL "FACULTY"
                    COMPUTE WS-PRODUCT = LS-NUMBER * WS-PRODUCT
                END-IF.
                IF LS-NUMBER = 5
                   DISPLAY WS-PRODUCT
                END-IF.
                GOBACK.
                    
            END PROGRAM FACULTY.