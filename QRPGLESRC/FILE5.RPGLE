**free
  dcl-f empdtl2  disk usage(*input:*update:*output) keyed;
  dcl-s id  like(empdtl2);
  dcl-s name char(20) inz('ARPIT VERMA');
  id = 141;
  chain id empdtl2;
  if not %found();
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
