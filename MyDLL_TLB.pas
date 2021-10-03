unit MyDLL_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 02/10/2021 4:09:54 CH from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Dropbox\Delphi\Project\MyDLL\MyDLL (1)
// LIBID: {15A55885-6826-43F8-9F26-A32370B22D15}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWow64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MyDLLMajorVersion = 1;
  MyDLLMinorVersion = 0;

  LIBID_MyDLL: TGUID = '{15A55885-6826-43F8-9F26-A32370B22D15}';

  IID_IKhoiTao: TGUID = '{88C3703C-09C9-4EC3-8D6A-DFD91958F464}';
  CLASS_KhoiTao: TGUID = '{94633D4A-3F8C-4EB9-92E4-C36FD0F3F551}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IKhoiTao = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  KhoiTao = IKhoiTao;


// *********************************************************************//
// Interface: IKhoiTao
// Flags:     (256) OleAutomation
// GUID:      {88C3703C-09C9-4EC3-8D6A-DFD91958F464}
// *********************************************************************//
  IKhoiTao = interface(IUnknown)
    ['{88C3703C-09C9-4EC3-8D6A-DFD91958F464}']
    function ThongBao: HResult; stdcall;
  end;

// *********************************************************************//
// The Class CoKhoiTao provides a Create and CreateRemote method to
// create instances of the default interface IKhoiTao exposed by
// the CoClass KhoiTao. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoKhoiTao = class
    class function Create: IKhoiTao;
    class function CreateRemote(const MachineName: string): IKhoiTao;
  end;

implementation

uses System.Win.ComObj;

class function CoKhoiTao.Create: IKhoiTao;
begin
  Result := CreateComObject(CLASS_KhoiTao) as IKhoiTao;
end;

class function CoKhoiTao.CreateRemote(const MachineName: string): IKhoiTao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KhoiTao) as IKhoiTao;
end;

end.

