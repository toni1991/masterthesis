       01  ERROR-MESSAGES.
           05 MSG PIC X(20) OCCURS 3 TIMES INDEXED BY MSG-INDEX.
           
       01  ERROR-MESSAGES-INIT-VALUES.
           05 ERROR-1 PIC X(20) VALUE "Error 1 occured".
           05 ERROR-2 PIC X(20) VALUE "Error 2 occured".
           05 ERROR-3 PIC X(20) VALUE "Error 3 occured".
