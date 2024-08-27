     **free
       dcl-f empdtl2 disk usage(*input) keyed;
       dcl-s id zoned(5);
       dcl-s name character(20);
       setll *hival  empdtl2;
       readp  empdtl2;
       Dow not %eof(empdtl2);
         id = empid;
         name = empname;
         dsply id;
         dsply name;
         readp empdtl2;
       enddo;
       *inlr = *on;
