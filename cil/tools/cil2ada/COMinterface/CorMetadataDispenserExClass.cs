using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;

namespace cil2ada.Interfaces
{
  [ComImport, GuidAttribute("E5CB7A31-7512-11D2-89CE-0080C792E5D8")]
  public class CorMetaDataDispenserExClass
  {
  }

  [ComImport, GuidAttribute("31BCFCE2-DAFB-11D2-9F81-00C04F79A0A3"), CoClass(typeof(CorMetaDataDispenserExClass))]
  public interface MetaDataDispenserEx : IMetadataDispenserEx
  {
  }
}
