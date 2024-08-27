     **free
       dcl-f empdtl2 disk usage(*input) keyed;
       dcl-s id  zoned(5) inz(131);
       dcl-s name varchar(20);
       setll id empdtl2;
       readp empdtl2;
       if %found();
         id = empid;
         name = empname;
         dsply ('Employee ID '  + %char(id) + 'has name ' + name );
       else;
         dsply ('Record not found for Employee ID ' + %char(id));
       endif;
       *INlr = *ON;
