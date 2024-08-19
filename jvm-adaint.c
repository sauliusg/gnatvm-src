/*
  This is a wrapper around the 'adaint.{h,c}' code to adapt it to
  different versions of the GNAT Ada compiler source code.
*/

/* exports: */
#include <jvm-adaint.h>

/* uses: */
#include <adaint.h>

static const char GNATVM_ATTR_UNSET = 127;

struct gnatvm_file_attributes gnatvm_unknown_attributes;

void
__gnatvm_gnat_reset_attributes
  (struct gnatvm_file_attributes* attr)
{
  attr->exists     = GNATVM_ATTR_UNSET;

  attr->writable   = GNATVM_ATTR_UNSET;
  attr->readable   = GNATVM_ATTR_UNSET;
  attr->executable = GNATVM_ATTR_UNSET;

  attr->regular    = GNATVM_ATTR_UNSET;
  attr->symbolic_link = GNATVM_ATTR_UNSET;
  attr->directory = GNATVM_ATTR_UNSET;

  attr->timestamp = (OS_Time)-2;
  attr->file_length = -1;
}

