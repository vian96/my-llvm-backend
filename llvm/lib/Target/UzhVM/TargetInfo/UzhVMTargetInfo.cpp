#include "TargetInfo/UzhVMTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
using namespace llvm;

Target &llvm::getTheUzhVMTarget() {
  static Target TheUzhVMTarget;
  return TheUzhVMTarget;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeUzhVMTargetInfo() {
  RegisterTarget<Triple::UzhVM> X(getTheUzhVMTarget(), "UzhVM", "UzhVM 32",
                                   "UzhVM");
}
