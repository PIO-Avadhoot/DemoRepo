**free
  DCL-F empdtl2  disk usage(*input:*Update:*output) keyed;
  dcl-s id  zoned(5);
  dcl-s name char(20) inz('ARPIT VERMA');
  id = 141;
  chain id empdtl2;
  if not found(empdtl2);
    dsply 'Record doesnot exists';
    empid = id;
    empname = name;
    write empdtlr;
  else;
    dsply 'record is found';
    dsply id;
    dsply name;
  endif;
  *inlr = *on;
