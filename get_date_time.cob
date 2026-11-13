       IDENTIFICATION DIVISION.
       PROGRAM-ID. GET_DATE_TIME.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  CURRENT-DATE-AND-TIME.
           05  CURRENT-DATE.
               10  CURRENT-YEAR         PIC 9(4).
               10  CURRENT-MONTH        PIC 9(2).
               10  CURRENT-DAY          PIC 9(2).
           05  CURRENT-TIME.
               10  CURRENT-HOUR         PIC 9(2).
               10  CURRENT-MINUTE       PIC 9(2).
               10  CURRENT-SECOND       PIC 9(2).
               10  CURRENT-MSEC         PIC 9(2).

       01  GET-DATE-OR-TIME.
           05 GET-DATE.
               10 DATE-YEAR                PIC 9(4).
               10 FILLER                   PIC X VALUE "-".
               10 DATE-MONTH               PIC 9(2).
               10 FILLER                   PIC X VALUE "-".
               10 DATE-DAY                 PIC 9(2).
           05 GET-TIME.
               10 TIME-HOUR                PIC 99.
               10 FILLER                   PIC X VALUE ":".
               10 TIME-MINUTE              PIC 99.
               10 FILLER                   PIC X VALUE ":".
               10 TIME-SECOND              PIC 99.

       LINKAGE SECTION.
       01  LINK-DATE                    PIC X(10).
       01  LINK-TIME                    PIC X(8).

       PROCEDURE DIVISION USING LINK-DATE, LINK-TIME.

           MOVE FUNCTION CURRENT-DATE TO CURRENT-DATE-AND-TIME.

           MOVE CURRENT-YEAR  TO DATE-YEAR.
           MOVE CURRENT-MONTH TO DATE-MONTH.
           MOVE CURRENT-DAY   TO DATE-DAY.

           MOVE CURRENT-HOUR    TO TIME-HOUR.
           MOVE CURRENT-MINUTE  TO TIME-MINUTE.
           MOVE CURRENT-SECOND  TO TIME-SECOND.

           MOVE GET-DATE        TO LINK-DATE.
           MOVE GET-TIME        TO LINK-TIME.

           GOBACK.
