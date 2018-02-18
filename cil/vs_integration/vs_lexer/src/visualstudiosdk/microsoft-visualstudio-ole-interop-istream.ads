-- Autogenerated by CIL2Ada v. 2
with MSSyst.Object;
with CIL_Types;
use CIL_Types;
with Microsoft.VisualStudio.OLE.Interop.ISequentialStream;
limited with Microsoft.VisualStudio.OLE.Interop.LARGE_INTEGER;
with Microsoft.VisualStudio.OLE.Interop.STATSTG;
with Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER;
package Microsoft.VisualStudio.OLE.Interop.IStream is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array (Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure Clone
     (This : access Typ;
      ppstm : access Microsoft.VisualStudio.OLE.Interop.IStream.Ref) is abstract;
   procedure Commit
     (This : access Typ;
      grfCommitFlags : CIL_Types.Unsigned_Integer) is abstract;
   procedure CopyTo
     (This : access Typ;
      pstm : access Microsoft.VisualStudio.OLE.Interop.IStream.Typ'Class;
      cb : Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype;
      pcbRead : access Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype_arr;
      pcbWritten : access Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype_arr) is abstract;
   procedure LockRegion
     (This : access Typ;
      libOffset : Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype;
      cb : Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype;
      dwLockType : CIL_Types.Unsigned_Integer) is abstract;
   procedure Read
     (This : access Typ;
      pv : CIL_Types.unsigned_int8_Arr;
      cb : CIL_Types.Unsigned_Integer;
      pcbRead : CIL_Types.Unsigned_Integer_addrof) is abstract;
   procedure Revert
     (This : access Typ) is abstract;
   procedure Seek
     (This : access Typ;
      dlibMove : Microsoft.VisualStudio.OLE.Interop.LARGE_INTEGER.Valuetype;
      dwOrigin : CIL_Types.Unsigned_Integer;
      plibNewPosition : access Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype_arr) is abstract;
   procedure SetSize
     (This : access Typ;
      libNewSize : Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype) is abstract;
   procedure Stat
     (This : access Typ;
      pstatstg : access Microsoft.VisualStudio.OLE.Interop.STATSTG.Valuetype_arr;
      grfStatFlag : CIL_Types.Unsigned_Integer) is abstract;
   procedure UnlockRegion
     (This : access Typ;
      libOffset : Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype;
      cb : Microsoft.VisualStudio.OLE.Interop.ULARGE_INTEGER.Valuetype;
      dwLockType : CIL_Types.Unsigned_Integer) is abstract;
   procedure Write
     (This : access Typ;
      pv : CIL_Types.unsigned_int8_Arr;
      cb : CIL_Types.Unsigned_Integer;
      pcbWritten : CIL_Types.Unsigned_Integer_addrof) is abstract;
private
   pragma Import (CIL, Clone, "Clone");
   pragma Import (CIL, Commit, "Commit");
   pragma Import (CIL, CopyTo, "CopyTo");
   pragma Import (CIL, LockRegion, "LockRegion");
   pragma Import (CIL, Read, "Read");
   pragma Import (CIL, Revert, "Revert");
   pragma Import (CIL, Seek, "Seek");
   pragma Import (CIL, SetSize, "SetSize");
   pragma Import (CIL, Stat, "Stat");
   pragma Import (CIL, UnlockRegion, "UnlockRegion");
   pragma Import (CIL, Write, "Write");
end Microsoft.VisualStudio.OLE.Interop.IStream;
pragma Import (CIL, Microsoft.VisualStudio.OLE.Interop.IStream,
   ".ver 7:1:40304:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[Microsoft.VisualStudio.OLE.Interop]Microsoft.VisualStudio.OLE.Interop.IStream");
