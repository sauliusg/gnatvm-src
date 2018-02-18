-- Autogenerated by CIL2Ada v. 2
with MSSyst.Object;
with CIL_Types;
use CIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package Microsoft.VisualStudio.Package_k.Methods is
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array (Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_CloseBracket
     (This : access Typ) return access MSSyst.String.Typ'Class;
   function get_DefaultMethod
     (This : access Typ) return Integer;
   function get_Delimiter
     (This : access Typ) return access MSSyst.String.Typ'Class;
   function get_OpenBracket
     (This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TypePostfix
     (This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TypePrefix
     (This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TypePrefixed
     (This : access Typ) return Standard.Boolean;
   function GetCount
     (This : access Typ) return Integer;
   function GetDescription
     (This : access Typ;
      index : Integer) return access MSSyst.String.Typ'Class;
   function GetName
     (This : access Typ;
      index : Integer) return access MSSyst.String.Typ'Class;
   function GetParameterCount
     (This : access Typ;
      index : Integer) return Integer;
   procedure GetParameterInfo
     (This : access Typ;
      index : Integer;
      parameter : Integer;
      name : access MSSyst.String.Ref;
      display : access MSSyst.String.Ref;
      description : access MSSyst.String.Ref);
   function GetType
     (This : access Typ;
      index : Integer) return access MSSyst.String.Typ'Class;
private
   pragma Convention (CIL, Typ);
   pragma Import (CIL, get_CloseBracket, "get_CloseBracket");
   pragma Import (CIL, get_DefaultMethod, "get_DefaultMethod");
   pragma Import (CIL, get_Delimiter, "get_Delimiter");
   pragma Import (CIL, get_OpenBracket, "get_OpenBracket");
   pragma Import (CIL, get_TypePostfix, "get_TypePostfix");
   pragma Import (CIL, get_TypePrefix, "get_TypePrefix");
   pragma Import (CIL, get_TypePrefixed, "get_TypePrefixed");
   pragma Import (CIL, GetCount, "GetCount");
   pragma Import (CIL, GetDescription, "GetDescription");
   pragma Import (CIL, GetName, "GetName");
   pragma Import (CIL, GetParameterCount, "GetParameterCount");
   pragma Import (CIL, GetParameterInfo, "GetParameterInfo");
   pragma Import (CIL, GetType, "GetType");
end Microsoft.VisualStudio.Package_k.Methods;
pragma Import (CIL, Microsoft.VisualStudio.Package_k.Methods,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[Microsoft.VisualStudio.Package.LanguageService]Microsoft.VisualStudio.Package.Methods");
