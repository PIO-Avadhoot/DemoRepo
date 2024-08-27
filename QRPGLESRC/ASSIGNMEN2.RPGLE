     **free
       dcl-f empdtl2 disk  usage(*input) keyed;
       Dcl-s int1   Packed(5) inz;
       setll *end empdtl2;
       readp empdtl2;
       dow not %eof(empdtl2);
         dsply empname;
         dsply empdept;
         dsply empsalary;
         readp empdtl2;
         enddo;
       *inlr = *on;
       Dcl-Proc Calculation;
       End-Proc;
