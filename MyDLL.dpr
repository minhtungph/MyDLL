library MyDLL;

uses
  ComServ,
  MyDLL_TLB in 'MyDLL_TLB.pas',
  KhoiTao in 'KhoiTao.pas' {KhoiTao: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
