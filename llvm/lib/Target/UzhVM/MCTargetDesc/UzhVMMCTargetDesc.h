#ifndef LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMMCTARGETDESC_H
#define LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMMCTARGETDESC_H

// Defines symbolic names for UzhVM registers.  This defines a mapping from
// register name to register number.
//
#define GET_REGINFO_ENUM
#include "UzhVMGenRegisterInfo.inc"

// Defines symbolic names for the UzhVM instructions.
#define GET_INSTRINFO_ENUM
#include "UzhVMGenInstrInfo.inc"

#endif // LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMMCTARGETDESC_H
