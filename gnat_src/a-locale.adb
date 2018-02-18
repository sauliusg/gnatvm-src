------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                           A D A . L O C A L E S                          --
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

with System; use System;

package body Ada.Locales is

   type Lower_4 is array (1 .. 4) of Character range 'a' .. 'z';
   type Upper_4 is array (1 .. 4) of Character range 'A' .. 'Z';

   --------------
   -- Language --
   --------------

   function Language return Language_Code is
      procedure C_Get_Language_Code (P : Address);
      pragma Import (C, C_Get_Language_Code);
      F : Lower_4;
   begin
      C_Get_Language_Code (F'Address);
      return Language_Code (F (1 .. 3));
   end Language;

   -------------
   -- Country --
   -------------

   function Country return Country_Code is
      procedure C_Get_Country_Code (P : Address);
      pragma Import (C, C_Get_Country_Code);
      F : Upper_4;
   begin
      C_Get_Country_Code (F'Address);
      return Country_Code (F (1 .. 2));
   end Country;

end Ada.Locales;
