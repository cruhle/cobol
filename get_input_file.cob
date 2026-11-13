       IDENTIFICATION DIVISION.
       PROGRAM-ID. GET_INPUT_FILE.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT INPUT-FILE ASSIGN TO 'file2read.txt'
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  INPUT-FILE.
           01  INPUT-RECORD.
               05 IN-REGISTO        PIC X(80).

       WORKING-STORAGE SECTION.

           01 FILE-STATUS           PIC X(1) VALUE SPACES.
               88 END-FILE                   VALUE "T".

       LINKAGE SECTION.
       01  CONFIG-FILE                    PIC X(80).

       PROCEDURE DIVISION USING CONFIG-FILE.

           PERFORM A100-GET-INPUT-FILE-NAME.

           GOBACK.

           A100-GET-INPUT-FILE-NAME SECTION.

               OPEN INPUT INPUT-FILE.
               MOVE SPACES TO IN-REGISTO.

               READ INPUT-FILE
                   AT END
                       MOVE 'T' TO FILE-STATUS
                   NOT AT END
                   MOVE IN-REGISTO TO CONFIG-FILE
               END-READ.

               CLOSE INPUT-FILE.

           A100-GET-INPUT-FILE-NAME-EXIT.
           EXIT.
