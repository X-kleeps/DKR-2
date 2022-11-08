var ds,ds2,i: integer; f: boolean;
begin
  println ('Введит строку');
  var s1:= readlnstring;
  println ('Введит подстроку');
  var s2:= readlnstring;
  i:= 1;
  ds:= Length(s1);
  ds2:= Length(s2);
  f:= false;
  while i <= ds - ds2 + 1 do
  begin
    if (s1[i]=s2[1]) then
    begin
      f:= true;
      for var j := 1 to ds2 - 1 do
        if (s1[i + j]<>s2[j + 1]) then
        begin
          i:= i + j;
          f:= false;
          break
        end;
      if f then
      begin
        print('является');
        exit;
      end;
    end;
    i:=i+ 1;
  end;
  print('не является');
end.