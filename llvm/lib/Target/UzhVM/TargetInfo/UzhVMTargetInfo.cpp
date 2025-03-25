#include "TargetInfo/UzhVMTargetInfo.h"
#include "UzhVM.h"
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

Target &llvm::getTheUzhVMTarget() {
  UZHVM_DUMP_YELLOW
  static Target TheUzhVMTarget;
  return TheUzhVMTarget;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeUzhVMTargetInfo() {
  UZHVM_DUMP_YELLOW
  RegisterTarget<Triple::uzhVM> X(getTheUzhVMTarget(), "uzhVM",
                                "UzhVM target for LLVM course", "UZHVM");
}
