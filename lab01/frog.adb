with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Integer_Text_IO;           
use Ada.Integer_Text_IO;


procedure frog is

    type intStr is array(1..100) of integer;
    in1 : intStr;
    --P = FROG JUMP HEIGHT
    --N = number of pipes
    P, N : integer;
    infp : file_type;
    Result   : String := "YOU WIN..";
begin
   open(infp,in_file,"exemplo01.in");
   get(infp,P);
   get(infp,N);


    --PERCORRE O ARQUIVO E SALVA EM UM ARRAY
   for i in 1..N loop
        get(infp, in1(i));
        -- Put_Line (Integer'Image (in1(i)));
   end loop;


   for j in 1..N-1 loop
        -- Put_Line (Integer'Image (in1(i)));
        if abs(in1(j) - in1(j+1)) > P and abs(in1(j) - in1(j+1)) /= 0 then
            --  Put_Line (Integer'Image (in1(j)));
            --  Put_Line (Integer'Image (in1(j+1)));
            --  Put_Line (Integer'Image(abs(in1(i) - in1(i+1))));
            --  Put_Line (Integer'Image (P));
            Result := "GAME OVER";
        end if;
   end loop;

     Put_Line (Result);
--   Put_Line (Integer'Image (P));
--   Put_Line (Integer'Image (N));

end frog;



