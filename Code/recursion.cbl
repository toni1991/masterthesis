            IDENTIFICATION DIVISION.
            PROGRAM-ID. FACTORIAL RECURSIVE.
            ENVIRONMENT DIVISION.
            CONFIGURATION SECTION.
               SOURCE-COMPUTER. IBM-ISERIES.
               OBJECT-COMPUTER. IBM-ISERIES.
            DATA DIVISION.
            WORKING-STORAGE SECTION.
            01 NUMB PIC 9(4) VALUE 5.
            01 FACT PIC 9(8) VALUE 0.
            LOCAL-STORAGE SECTION.
            01 NUM PIC 9(4).
            PROCEDURE DIVISION.
                MOVE NUMB TO NUM.
                IF NUMB = 0
                    MOVE 1 TO FACT
                ELSE
                    SUBTRACT 1 FROM NUMB
                    CALL "FACTORIAL"
                    MULTIPLY NUM BY FACT
                END-IF.
                DISPLAY NUM "! = " FACT.
                GOBACK.
            END PROGRAM FACTORIAL.