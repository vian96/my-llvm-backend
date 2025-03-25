#include "UzhVMInstrInfo.h"
#include "UzhVM.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineMemOperand.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define GET_INSTRINFO_CTOR_DTOR
#include "UzhVMGenInstrInfo.inc"

#define DEBUG_TYPE "UzhVM-inst-info"

UzhVMInstrInfo::UzhVMInstrInfo() : UzhVMGenInstrInfo() { UZHVM_DUMP_GREEN }
