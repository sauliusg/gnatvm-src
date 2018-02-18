-- Autogenerated by CIL2Ada v. 2
with MSSyst.Object;
with CIL_Types;
use CIL_Types;
limited with MSSyst.String;
package Microsoft.VisualStudio.OLE.Interop.IEnumString is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array (Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure Clone
     (This : access Typ;
      ppEnum : access Microsoft.VisualStudio.OLE.Interop.IEnumString.Ref) is abstract;
   function Next
     (This : access Typ;
      celt : CIL_Types.Unsigned_Integer;
      rgelt : access MSSyst.String.Ref_arr;
      pceltFetched : CIL_Types.Unsigned_Integer_addrof) return Integer is abstract;
   function Reset
     (This : access Typ) return Integer is abstract;
   function Skip
     (This : access Typ;
      celt : CIL_Types.Unsigned_Integer) return Integer is abstract;
private
   pragma Import (CIL, Clone, "Clone");
   pragma Import (CIL, Next, "Next");
   pragma Import (CIL, Reset, "Reset");
   pragma Import (CIL, Skip, "Skip");
end Microsoft.VisualStudio.OLE.Interop.IEnumString;
pragma Import (CIL, Microsoft.VisualStudio.OLE.Interop.IEnumString,
   ".ver 7:1:40304:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[Microsoft.VisualStudio.OLE.Interop]Microsoft.VisualStudio.OLE.Interop.IEnumString");
