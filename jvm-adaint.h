/*
  This is a wrapper around the 'adaint.{h,c}' code to adapt it to
  different versions of the GNAT Ada compiler source code.
*/

#ifndef __JVM_ADAINT_H
#define __JVM_ADAINT_H

/* Type corresponding to GNAT.OS_Lib.OS_Time */
#if defined (_WIN64)
typedef long long GNATVM_OS_Time;
#else
typedef long GNATVM_OS_Time;
#endif

/* The structure GNATVM_file_attributes maps exactly to the record
   declared in the "osint.ad{s,b}" package. the new GNAT compilers
   will extend their 'file_attribute' structure, but he current code
   will depend only on teh declaration here, and the procedures will
   translate from one format to another. We need this to be able to
   link the locally defined code with the code in the GNAT library of
   the currently installed compiler and not to get 'multiply defined
   symbols" error.

   The need to have a locally defined functions on the C side stems
   from the segfaults (MEMORY_ERROR) in the original implementation.
*/

struct GNATVM_file_attributes {
  unsigned char exists;

  unsigned char writable;
  unsigned char readable;
  unsigned char executable;

  unsigned char symbolic_link;
  unsigned char regular;
  unsigned char directory;

  GNATVM_OS_Time timestamp;
  long file_length;
};
/* WARNING: changing the size here might require changing the constant
 * File_Attributes_Size in osint.ads
 */


#endif
