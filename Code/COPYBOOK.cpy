       01  ERROR-MESSAGES.
           05 ERR-MSG PIC X(20) OCCURS 3 TIMES INDEXED BY MSG-INDEX.

       01  ERROR-MESSAGES-INIT-VALUES.
           05 FILLER PIC X(20) VALUE "Error 1 occured".
           05 FILLER PIC X(20) VALUE "Error 2 occured".
           05 FILLER PIC X(20) VALUE "Error 3 occured".
