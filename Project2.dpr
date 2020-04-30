program lab2;

 {Дан текстовый файл. Занести в другой файл символы исходного файла в
 обратном порядке.}

{$APPTYPE CONSOLE}

uses
  SysUtils,
  UStack in 'UStack.pas';
var f:textfile;
s:tStack;
c:char;

begin
  if not FileExists('input.txt') then
    writeln('File input.txt not found')
  else
    begin
      assignfile(f, 'input.txt');
      reset(f);
      Init(s);
      while not eof(f) do
        begin
          read(f,c);
          push(s,c);
        end;
      close(f);
      assignfile(f, 'output.txt');
      rewrite(f);
      while not isempty(s) do
        write(f, pop(s));
      close(f);
      writeln('Reversed');
    end;
readln
end.
