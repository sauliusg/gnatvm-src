/*
  This is a wrapper around the 'adaint.{h,c}' code to adapt it to
  different versions of the GNAT Ada compiler source code.
*/

/* exports: */
#include <jvm-adaint.h>

/* uses: */
#include <adaint.h>

static const char ATTR_UNSET = 127;

struct GNATVM_file_attributes GNATVM_unknown_attributes;

void
__gnat_GNATVM_reset_attributes
  (struct GNATVM_file_attributes* attr)
{
  attr->exists     = ATTR_UNSET;

  attr->writable   = ATTR_UNSET;
  attr->readable   = ATTR_UNSET;
  attr->executable = ATTR_UNSET;

  attr->regular    = ATTR_UNSET;
  attr->symbolic_link = ATTR_UNSET;
  attr->directory = ATTR_UNSET;

  attr->timestamp = (OS_Time)-2;
  attr->file_length = -1;
}

