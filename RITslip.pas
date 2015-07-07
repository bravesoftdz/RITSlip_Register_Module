//m4rcelpl@outlook.com


unit RITslip;

interface

uses Registry, Windows, INIFiles;

type
  TeRITslip = class
 // TForm1 = class(TForm)
private
    { Private declarations }

  public
    { Public declarations }




    procedure SaveIntegerReg(RootKeyName : HKEY; key : string; keyName : string; value : integer);
    procedure SaveStringReg(RootKeyName : HKEY; key : string; keyName : string; value : String);
    procedure SaveBoolReg(RootKeyName : HKEY; key : string; keyName : string; value : Boolean);

    function  ReadStringReg (RootKeyName : HKEY; key : string; keyName : string): String;
    function  ReadIntegerReg (RootKeyName : HKEY; key : string; keyName : string): Integer;
    function  ReadBoolReg (RootKeyName : HKEY; key : string; keyName : string): Boolean;

    procedure SaveStringIni(iniNeme:String; sectionNeme:String; keyName:string; value:string);

    function ReadStringIniValue(iniNeme:String; sectionNeme:String; keyName:string): string;


 end;
implementation

{ TeReg }

{
Example:
RITslip.SaveStringReg(HKEY_LOCAL_MACHINE, 'Software\Test32', 'SomeNameString', 'ValueString');
 }

procedure TeRITslip.SaveBoolReg(RootKeyName: HKEY; key, keyName: string;
  value: Boolean);
var
   Reg: TRegistry;
begin
     Reg := TRegistry.Create;

try
   Reg.RootKey := RootKeyName;
   Reg.OpenKey(key,True);
   Reg.WriteBool(keyName,value);

finally
      Reg.Free;
end;
end;

procedure TeRITslip.SaveIntegerReg(RootKeyName: HKEY; key, keyName: string;
  value: integer);
var
  Reg: TRegistry;
begin
   Reg := TRegistry.Create;

try
      Reg.RootKey := RootKeyName;
      Reg.OpenKey(key,True);
      Reg.WriteInteger(keyName,value);
finally
      Reg.Free;
end;
end;


procedure TeRITslip.SaveStringReg(RootKeyName: HKEY; key, keyName,
  value: String);
var
  Reg: TRegistry;
begin
   Reg := TRegistry.Create;

try
      Reg.RootKey := RootKeyName;
      Reg.OpenKey(key,True);
      Reg.WriteString(keyName,value);
finally
      Reg.Free;
end;
end;

{
Example:
RITslip.ReadStringReg(HKEY_LOCAL_MACHINE, 'Software\Test32', 'SomeNameString';
 }


function TeRITslip.ReadBoolReg(RootKeyName: HKEY; key,
  keyName: string): Boolean;
var
  Reg: TRegistry;
begin
   Reg := TRegistry.Create;

try
      Reg.RootKey := RootKeyName;
      Reg.OpenKey(key,True);
     ReadBoolReg := Reg.ReadBool(keyName);
finally
      Reg.Free;
end;
end;


function TeRITslip.ReadIntegerReg(RootKeyName: HKEY; key,
  keyName: string): Integer;
var
  Reg: TRegistry;
begin
   Reg := TRegistry.Create;

try
      Reg.RootKey := RootKeyName;
      Reg.OpenKey(key,True);
     ReadIntegerReg := Reg.ReadInteger(keyName);
finally
      Reg.Free;
end;
end;


function TeRITslip.ReadStringReg(RootKeyName: HKEY; key,
  keyName: string): String;
var
  Reg: TRegistry;
begin
   Reg := TRegistry.Create;

try
      Reg.RootKey := RootKeyName;
      Reg.OpenKey(key,True);
     ReadStringReg := Reg.ReadString(keyName);
finally
      Reg.Free;
end;
end;


{
Example:
RITslip.SaveStringIni('c:\plik.ini', 'Section', 'key1', 'SomeValue');
 }

procedure TeRITslip.SaveStringIni(iniNeme, sectionNeme, keyName,
  value: string);
var
   INI: TINIFile;
begin
   try
      INI := TINIFile.Create(iniNeme);
      INI.WriteString(sectionNeme, keyName, value);
     
   finally
      INI.Free;
   end;
end;


{
Example:
RITslip.ReadStringIniValue('c:\plik.ini', 'Section', 'key1')
}

function TeRITslip.ReadStringIniValue(iniNeme, sectionNeme,
  keyName: string): string;
var
   INI: TINIFile;
begin
   try
      INI := TIniFile.Create(iniNeme);
      ReadStringIniValue := INI.ReadString(sectionNeme, keyName, '');

      finally
      INI.Free;
   end;
end;


end.



















