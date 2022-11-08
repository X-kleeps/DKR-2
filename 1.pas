var
  a: string; sum: integer;
  mas: array[1..9999] of integer;
begin
  print('Введите предел массива');
  var g:=readinteger;
  for var k := 1 to g do
  begin
    mas[k] := random(1, 10);
    print(mas[k]);
  end;
  println;
  print('Введите число');
  var s:= readlninteger;
  for var k := 1 to g do
  begin
    if (sum < s) then
    begin
      sum := mas[k] + sum;
      if (k = g) and (sum < s) then
        println(' Суммы нет');
    end
    else 
     begin 
      println(' Итог=', k - 1);
      break;
     end;
  end;
end.