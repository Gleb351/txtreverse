unit Unit1;


 {Дан текстовый файл. Занести в другой файл символы исходного файла в
 обратном порядке.}


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UStack;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:textfile;
  s:tStack;
  c:char;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    assignfile(f, OpenDialog1.FileName);
    reset(f);
    Button1.Visible := false;
    Button2.Visible := true;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Init(s);
  while not eof(f) do begin
    read(f,c);
    push(s,c);
  end;
  closefile(f);
  if SaveDialog1.Execute then begin
    assignfile(f,SaveDialog1.FileName);
    rewrite(f);
    while not isempty(s) do
      write(f, pop(s));
    closefile(f);
    Label1.Caption := 'Done';
  end;
  Button3.Visible := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;
end;

end.
 