#ifndef LLVM_LIB_TARGET_UzhVM_UzhVM_H
#define LLVM_LIB_TARGET_UzhVM_UzhVM_H

#include "MCTargetDesc/UzhVMMCTargetDesc.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetMachine.h"

#define UZHVM_DUMP(Color)                                                        \
  {                                                                            \
    llvm::errs().changeColor(Color)                                            \
        << __func__ << "\n\t\t" << __FILE__ << ":" << __LINE__ << "\n";        \
    llvm::errs().changeColor(llvm::raw_ostream::WHITE);                        \
  }
// #define UZHVM_DUMP(Color) {}

#define UZHVM_DUMP_RED UZHVM_DUMP(llvm::raw_ostream::RED)
#define UZHVM_DUMP_GREEN UZHVM_DUMP(llvm::raw_ostream::GREEN)
#define UZHVM_DUMP_YELLOW UZHVM_DUMP(llvm::raw_ostream::YELLOW)
#define UZHVM_DUMP_CYAN UZHVM_DUMP(llvm::raw_ostream::CYAN)
#define UZHVM_DUMP_MAGENTA UZHVM_DUMP(llvm::raw_ostream::MAGENTA)
#define UZHVM_DUMP_WHITE UZHVM_DUMP(llvm::raw_ostream::WHITE)
namespace llvm {
class UzhVMTargetMachine;
class FunctionPass;
class UzhVMSubtarget;
class AsmPrinter;
class InstructionSelector;
class MCInst;
class MCOperand;
class MachineInstr;
class MachineOperand;
class PassRegistry;

bool lowerUzhVMMachineInstrToMCInst(const MachineInstr *MI, MCInst &OutMI,
                                  AsmPrinter &AP);
bool LowerUzhVMMachineOperandToMCOperand(const MachineOperand &MO,
                                       MCOperand &MCOp, const AsmPrinter &AP);
FunctionPass *createUzhVMISelDag(UzhVMTargetMachine &TM, CodeGenOptLevel OptLevel);

} // namespace llvm

#endif // LLVM_LIB_TARGET_UzhVM_UzhVM_H