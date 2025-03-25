#ifndef LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMMCASMINFO_H
#define LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMMCASMINFO_H

#include "llvm/MC/MCAsmInfoELF.h"

namespace llvm {

class Triple;

class UzhVMELFMCAsmInfo : public MCAsmInfoELF {
public:
  explicit UzhVMELFMCAsmInfo(const Triple &TheTriple);
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMMCASMINFO_H