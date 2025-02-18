```ada
procedure Example is
   subtype My_Sub is Integer range 1..10;
   X : My_Sub := 1;
begin
   X := X + 5;
   if X > My_Sub'Last then
      X := My_Sub'Last; -- Handle the overflow gracefully
      Put_Line("X is greater than the maximum value of My_Sub. Setting it to maximum");
   end if;
   Put_Line("X = " & X'Image);
exception
   when others =>
      Put_Line("An unexpected error occurred");
end Example;
```