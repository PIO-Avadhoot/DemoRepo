     **FREE
       dcl-f empdtl2 disk usage(*update:*output)keyed;
       dcl-s empid zoned(5) inz(345);

       chain empid empdtl2;
       if %found(empdtl2);
         dsply empid;
         dsply empname;
         dsply empdept;
         dsply empsalary;
       else;
         empid = 345;
         empname = 'Yogi Adityanath';
         empdept = 'Web Development';
         empsalary = 67898;
         write empdtlr;
       endif;
       *inlr = *on;
