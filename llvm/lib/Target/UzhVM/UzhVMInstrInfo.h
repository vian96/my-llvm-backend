#ifndef LLVM_LIB_TARGET_UZHVM_UZHVMINSTRINFO_H
#define LLVM_LIB_TARGET_UZHVM_UZHVMINSTRINFO_H

#include "UzhVMRegisterInfo.h"
#include "MCTargetDesc/UzhVMInfo.h"
#include "llvm/CodeGen/TargetInstrInfo.h"

#define GET_INSTRINFO_HEADER
#include "UzhVMGenInstrInfo.inc"

namespace llvm {

class UzhVMSubtarget;

class UzhVMInstrInfo : public UzhVMGenInstrInfo {
public:
  UzhVMInstrInfo();

};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_UZHVM_UZHVMINSTRINFO_H
