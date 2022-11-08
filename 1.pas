var
  a: string; sum: integer;
  mas: array[1..10] of integer;

begin
  var s:= readlninteger;
  for var k := 1 to 5 do
  begin
    mas[k] := random(1, 10);
    print(' ', mas[k]);
  end;
  for var k := 1 to 5 do
  begin
    if (sum < s) then
    begin
      sum := mas[k] + sum;
      if (k = 5) and (sum < s) then
        println(' Суммы нет');
    end
    else 
     begin 
      println(' Итог=', k - 1);
      break;
     end;
  end;
end.