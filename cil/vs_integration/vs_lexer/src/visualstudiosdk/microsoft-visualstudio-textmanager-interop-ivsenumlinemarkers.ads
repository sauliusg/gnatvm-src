-- Autogenerated by CIL2Ada v. 2
with MSSyst.Object;
with CIL_Types;
use CIL_Types;
limited with Microsoft.VisualStudio.TextManager.Interop.IVsTextLineMarker;
package Microsoft.VisualStudio.TextManager.Interop.IVsEnumLineMarkers is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array (Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function GetCount
     (This : access Typ;
      pcMarkers : CIL_Types.Int32_addrof) return Integer is abstract;
   function Next
     (This : access Typ;
      ppRetval : access Microsoft.VisualStudio.TextManager.Interop.IVsTextLineMarker.Ref) return Integer is abstract;
   function Reset
     (This : access Typ) return Integer is abstract;
private
   pragma Import (CIL, GetCount, "GetCount");
   pragma Import (CIL, Next, "Next");
   pragma Import (CIL, Reset, "Reset");
end Microsoft.VisualStudio.TextManager.Interop.IVsEnumLineMarkers;
pragma Import (CIL, Microsoft.VisualStudio.TextManager.Interop.IVsEnumLineMarkers,
   ".ver 7:1:40304:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[Microsoft.VisualStudio.TextManager.Interop]Microsoft.VisualStudio.TextManager.Interop.IVsEnumLineMarkers");
