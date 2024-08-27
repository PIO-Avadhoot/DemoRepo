  **free;
   dcl-s num1 zoned(3);
   dcl-s num2 zoned(3);
   dcl-s num3 zoned(3);

   num1 = 345;
   num2 = 567;
   num3 = 789;

   if num1 < num2;
      if num2 < num3;
         dsply num3;
      else;
         dsply num2;
      endif;
   elseif num3 > num2;
      if num1 > num3;
         dsply num1;
      else;
         dsply num3;
      endif;
   elseif num1 > num3;
      if num1 > num2;
         dsply num1;
      else;
         dsply num2;
      endif;
   endif;

   *Inlr = *On;
RETURN;
