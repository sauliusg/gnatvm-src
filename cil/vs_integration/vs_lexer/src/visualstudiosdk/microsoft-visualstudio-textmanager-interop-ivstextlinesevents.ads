-- Autogenerated by CIL2Ada v. 2
with MSSyst.Object;
with CIL_Types;
use CIL_Types;
with Microsoft.VisualStudio.TextManager.Interop.TextLineChange;
package Microsoft.VisualStudio.TextManager.Interop.IVsTextLinesEvents is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array (Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure OnChangeLineAttributes
     (This : access Typ;
      iFirstLine : Integer;
      iLastLine : Integer) is abstract;
   procedure OnChangeLineText
     (This : access Typ;
      pTextLineChange : access Microsoft.VisualStudio.TextManager.Interop.TextLineChange.Valuetype_arr;
      fLast : Integer) is abstract;
private
   pragma Import (CIL, OnChangeLineAttributes, "OnChangeLineAttributes");
   pragma Import (CIL, OnChangeLineText, "OnChangeLineText");
end Microsoft.VisualStudio.TextManager.Interop.IVsTextLinesEvents;
pragma Import (CIL, Microsoft.VisualStudio.TextManager.Interop.IVsTextLinesEvents,
   ".ver 7:1:40304:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[Microsoft.VisualStudio.TextManager.Interop]Microsoft.VisualStudio.TextManager.Interop.IVsTextLinesEvents");
