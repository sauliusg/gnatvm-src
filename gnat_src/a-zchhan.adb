------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--    A D A . W I D E _ W I D E _ C H A R A C T E R S . H A N D L I N G     --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--            Copyright (C) 2010, Free Software Foundation, Inc.            --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

with Ada.Wide_Wide_Characters.Unicode; use Ada.Wide_Wide_Characters.Unicode;

package body Ada.Wide_Wide_Characters.Handling is

   ---------------------
   -- Is_Alphanumeric --
   ---------------------

   function Is_Alphanumeric (Item : Wide_Wide_Character) return Boolean is
   begin
      return Is_Letter (Item) or else Is_Digit (Item);
   end Is_Alphanumeric;

   ----------------
   -- Is_Control --
   ----------------

   function Is_Control (Item : Wide_Wide_Character) return Boolean is
   begin
      return Get_Category (Item) = Cc;
   end Is_Control;

   --------------
   -- Is_Digit --
   --------------

   function Is_Digit (Item : Wide_Wide_Character) return Boolean
     renames Ada.Wide_Wide_Characters.Unicode.Is_Digit;

   ----------------
   -- Is_Graphic --
   ----------------

   function Is_Graphic (Item : Wide_Wide_Character) return Boolean is
   begin
      return not Is_Non_Graphic (Item);
   end Is_Graphic;

   --------------------------
   -- Is_Hexadecimal_Digit --
   --------------------------

   function Is_Hexadecimal_Digit (Item : Wide_Wide_Character) return Boolean is
   begin
      return Is_Digit (Item)
        or else Item in 'A' .. 'F'
        or else Item in 'a' .. 'f';
   end Is_Hexadecimal_Digit;

   ---------------
   -- Is_Letter --
   ---------------

   function Is_Letter (Item : Wide_Wide_Character) return Boolean
     renames Ada.Wide_Wide_Characters.Unicode.Is_Letter;

   ------------------------
   -- Is_Line_Terminator --
   ------------------------

   function Is_Line_Terminator (Item : Wide_Wide_Character) return Boolean
     renames Ada.Wide_Wide_Characters.Unicode.Is_Line_Terminator;

   --------------
   -- Is_Lower --
   --------------

   function Is_Lower (Item : Wide_Wide_Character) return Boolean is
   begin
      return Get_Category (Item) = Ll;
   end Is_Lower;

   -------------
   -- Is_Mark --
   -------------

   function Is_Mark (Item : Wide_Wide_Character) return Boolean
     renames Ada.Wide_Wide_Characters.Unicode.Is_Mark;

   --------------
   -- Is_Other --
   --------------

   function Is_Other (Item : Wide_Wide_Character) return Boolean
     renames Ada.Wide_Wide_Characters.Unicode.Is_Other;

   --------------------
   -- Is_Punctuation --
   --------------------

   function Is_Punctuation (Item : Wide_Wide_Character) return Boolean
     renames Ada.Wide_Wide_Characters.Unicode.Is_Punctuation;

   --------------
   -- Is_Space --
   --------------

   function Is_Space (Item : Wide_Wide_Character) return Boolean
     renames Ada.Wide_Wide_Characters.Unicode.Is_Space;

   ----------------
   -- Is_Special --
   ----------------

   function Is_Special (Item : Wide_Wide_Character) return Boolean is
   begin
      return Is_Graphic (Item) and then not Is_Alphanumeric (Item);
   end Is_Special;

   --------------
   -- Is_Upper --
   --------------

   function Is_Upper (Item : Wide_Wide_Character) return Boolean is
   begin
      return Get_Category (Item) = Lu;
   end Is_Upper;

   --------------
   -- To_Lower --
   --------------

   function To_Lower (Item : Wide_Wide_Character) return Wide_Wide_Character
     renames Ada.Wide_Wide_Characters.Unicode.To_Lower_Case;

   function To_Lower (Item : Wide_Wide_String) return Wide_Wide_String is
      Result : Wide_Wide_String (Item'Range);

   begin
      for J in Result'Range loop
         Result (J) := To_Lower (Item (J));
      end loop;

      return Result;
   end To_Lower;

   --------------
   -- To_Upper --
   --------------

   function To_Upper (Item : Wide_Wide_Character) return Wide_Wide_Character
     renames Ada.Wide_Wide_Characters.Unicode.To_Upper_Case;

   function To_Upper (Item : Wide_Wide_String) return Wide_Wide_String is
      Result : Wide_Wide_String (Item'Range);

   begin
      for J in Result'Range loop
         Result (J) := To_Upper (Item (J));
      end loop;

      return Result;
   end To_Upper;

end Ada.Wide_Wide_Characters.Handling;
