unit KhoiTao;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, MyDLL_TLB, StdVcl,fmx.Dialogs;

type
  TKhoiTao = class(TTypedComObject, IKhoiTao)
  protected
    function ThongBao: HResult; stdcall;
  end;

implementation

uses ComServ;

function TKhoiTao.ThongBao: HResult;
begin
showmessage('phạm minh tùng');
Result:=0;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TKhoiTao, Class_KhoiTao,
    ciMultiInstance, tmApartment);
end.
