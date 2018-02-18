------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                                 J A V A                                  --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                     Copyright (C) 1998-2013, AdaCore                     --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT; see file COPYING3.  If not, go to --
-- http://www.gnu.org/licenses for a complete copy of the license.          --
--                                                                          --
-- The GNAT Ada tool chain for the JVM and .NET platforms is  maintained by --
-- AdaCore - http://www.adacore.com                                         --
--                                                                          --
------------------------------------------------------------------------------

package java is
   pragma Preelaborate;

   subtype boolean is Standard.Boolean;
   subtype char    is Standard.Wide_Character;
   subtype byte    is Standard.Short_Short_Integer;
   subtype short   is Standard.Short_Integer;
   subtype int     is Standard.Integer;
   subtype long    is Standard.Long_Integer;
   subtype float   is Standard.Float;
   subtype double  is Standard.Long_Float;

   --  boolean array types: boolean [], boolean [][], boolean [][][]

   type boolean_Arr_Obj   is array (Natural range <>) of boolean;
   type boolean_Arr       is access all boolean_Arr_Obj;

   type boolean_Arr_2_Obj is array (Natural range <>) of boolean_Arr;
   type boolean_Arr_2     is access all boolean_Arr_2_Obj;

   type boolean_Arr_3_Obj is array (Natural range <>) of boolean_Arr_2;
   type boolean_Arr_3     is access all boolean_Arr_3_Obj;

   --  char array types: char [], char [][], char [][][]

   type char_Arr_Obj   is array (Natural range <>) of char;
   type char_Arr       is access all char_Arr_Obj;

   type char_Arr_2_Obj is array (Natural range <>) of char_Arr;
   type char_Arr_2     is access all char_Arr_2_Obj;

   type char_Arr_3_Obj is array (Natural range <>) of char_Arr_2;
   type char_Arr_3     is access all char_Arr_3_Obj;

   --  byte array types: byte [], byte [][], byte [][][]

   type byte_Arr_Obj   is array (Natural range <>) of byte;
   type byte_Arr       is access all byte_Arr_Obj;

   type byte_Arr_2_Obj is array (Natural range <>) of byte_Arr;
   type byte_Arr_2     is access all byte_Arr_2_Obj;

   type byte_Arr_3_Obj is array (Natural range <>) of byte_Arr_2;
   type byte_Arr_3     is access all byte_Arr_3_Obj;

   --  short array types: short [], short [][], short [][][]

   type short_Arr_Obj   is array (Natural range <>) of short;
   type short_Arr       is access all short_Arr_Obj;

   type short_Arr_2_Obj is array (Natural range <>) of short_Arr;
   type short_Arr_2     is access all short_Arr_2_Obj;

   type short_Arr_3_Obj is array (Natural range <>) of short_Arr_2;
   type short_Arr_3     is access all short_Arr_3_Obj;

   --  int array types: int [], int [][], int [][][]

   type int_Arr_Obj   is array (Natural range <>) of int;
   type int_Arr       is access all int_Arr_Obj;

   type int_Arr_2_Obj is array (Natural range <>) of int_Arr;
   type int_Arr_2     is access all int_Arr_2_Obj;

   type int_Arr_3_Obj is array (Natural range <>) of int_Arr_2;
   type int_Arr_3     is access all int_Arr_3_Obj;

   --  long array types: long [], long [][], long [][][]

   type long_Arr_Obj   is array (Natural range <>) of long;
   type long_Arr       is access all long_Arr_Obj;

   type long_Arr_2_Obj is array (Natural range <>) of long_Arr;
   type long_Arr_2     is access all long_Arr_2_Obj;

   type long_Arr_3_Obj is array (Natural range <>) of long_Arr_2;
   type long_Arr_3     is access all long_Arr_3_Obj;

   --  float array types: float [], float [][], float [][][]

   type float_Arr_Obj   is array (Natural range <>) of float;
   type float_Arr       is access all float_Arr_Obj;

   type float_Arr_2_Obj is array (Natural range <>) of float_Arr;
   type float_Arr_2     is access all float_Arr_2_Obj;

   type float_Arr_3_Obj is array (Natural range <>) of float_Arr_2;
   type float_Arr_3     is access all float_Arr_3_Obj;

   --  double array types: double [], double [][], double [][][]

   type double_Arr_Obj   is array (Natural range <>) of double;
   type double_Arr       is access all double_Arr_Obj;

   type double_Arr_2_Obj is array (Natural range <>) of double_Arr;
   type double_Arr_2     is access all double_Arr_2_Obj;

   type double_Arr_3_Obj is array (Natural range <>) of double_Arr_2;
   type double_Arr_3     is access all double_Arr_3_Obj;

end java;

pragma Import (Java, java, "java");
