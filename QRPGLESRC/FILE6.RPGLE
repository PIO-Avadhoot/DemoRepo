     **free
       dcl-f gymdtl2 disk usage(*input) keyed;
       dcl-s id zoned(5);
       dcl-s name varchar(20);
       id = 121;
       setgt id gymdtl2;
       read gymdtl2;
       dow not %eof(gymdtl2);
         id = aid;
         name = aname;
         dsply id;
         dsply name;
         read gymdtl2;
       enddo;
       *inlr = *on;
