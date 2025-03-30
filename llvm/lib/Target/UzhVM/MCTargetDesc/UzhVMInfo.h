#ifndef LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMINFO_H
#define LLVM_LIB_TARGET_UZHVM_MCTARGETDESC_UZHVMINFO_H

#include "llvm/MC/MCInstrDesc.h"

namespace llvm {

namespace UzhVMOp {
enum OperandType : unsigned {
  OPERAND_SIMM16 = MCOI::OPERAND_FIRST_TARGET,
};
} // namespace UzhVMOp

} // end namespace llvm

#endif
