     **free
       dcl-f empdtl2 disk  usage(*input) keyed;
       setll *end empdtl2;
       readp empdtl2;
       dow not %eof(empdtl2);
         dsply empname;
         dsply empdept;
         dsply empsalary;
         readp empdtl2;
         enddo;
       *inlr = *on;
