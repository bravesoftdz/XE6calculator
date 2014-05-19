unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
  private
    { Private declarations }
    num1,num2,R:Extended;
    ioperator:integer;//0 + 1 - 2 x 3 /
  public
    procedure FormCreate(Sender: TObject);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}





procedure TForm1.Button16Click(Sender: TObject);
begin
  Edit1.Text := '0';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Edit1.Text := FloatToStr(StrToFloat(Edit1.Text)*-1);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  Edit1.Text := FloatToStr(StrToFloat(Edit1.Text)/100);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = '0') And (TButton(Sender).Text<>'.')   then
    Edit1.Text := TButton(Sender).Text
  else Edit1.Text := Edit1.Text + TButton(Sender).Text;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  num1 := StrToFloat(Edit1.Text);
  if TButton(Sender).Text = '+' then
    iOperator := 1
  else if TButton(Sender).Text = '-' then
    iOperator := 2
  else if TButton(Sender).Text = 'X' then
    iOperator := 3
  else if TButton(Sender).Text = '/' then
    iOperator := 4
  else iOperator := 0;
  Edit1.Text := '0';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if iOperator >0  then begin
    num2 := StrToFloat(Edit1.Text);
    case iOperator of
      1: R := num1 + num2;
      2: R := num1 - num2;
      3: R := num1 * num2;
      4: R := num1 / num2;
    end;
    Edit1.Text := FloatToStr(R);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin


end;

end.
