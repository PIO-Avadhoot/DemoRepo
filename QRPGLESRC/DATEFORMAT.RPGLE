     dmydate           s              8p 0 inz(20240512)
     ddate1            s               d
     dmytime           s             10p 0 inz(234524)
     dtime1            s               T
     d$num_A           s             10P 0 inz(201223)
     ddate_A           s               d
       time1=%time(mytime : *ISO);
       date1 = %date(mydate :*ISO);
       dsply date1;
       dsply time1;
       date_A = %date($num_A:*ymd);
       dsply date_A;
       *inlr = *on;
