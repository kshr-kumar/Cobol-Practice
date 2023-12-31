       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTORIAL-CALCULATION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NUMBER PIC 9(3).
       01  WS-FACTORIAL PIC 9(18) VALUE 1.
       01  WS-COUNTER PIC 9(1) VALUE 1.

       PROCEDURE DIVISION.
       DISPLAY "ENTER THE NUMBER TO CALCULATE FACTORIAL"
       ACCEPT WS-NUMBER
       PERFORM CALCULATE-FACTORIAL
       DISPLAY "FACTORIAL OF " WS-NUMBER "IS " WS-FACTORIAL
       STOP RUN.

       CALCULATE-FACTORIAL.
           IF WS-NUMBER = 0
               MOVE 1 TO WS-FACTORIAL
           ELSE
               PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 
      -         WS-NUMBER
               MULTIPLY WS-COUNTER BY WS-FACTORIAL GIVING WS-FACTORIAL
               END-PERFORM
           END-IF.
           
