#include "UzhVMRegisterInfo.h"
#include "UzhVM.h"
#include "UzhVMFrameLowering.h"
#include "llvm/CodeGen/TargetInstrInfo.h"

using namespace llvm;

#define GET_REGINFO_TARGET_DESC
#include "UzhVMGenRegisterInfo.inc"

UzhVMRegisterInfo::UzhVMRegisterInfo() : UzhVMGenRegisterInfo(UzhVM::R0) {
  UZHVM_DUMP_GREEN
}
const MCPhysReg *
UzhVMRegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  UZHVM_DUMP_GREEN
  return CSR_UzhVM_SaveList;
}

BitVector UzhVMRegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  UZHVM_DUMP_GREEN
  UzhVMFrameLowering const *TFI = getFrameLowering(MF);

  BitVector Reserved(getNumRegs());
  Reserved.set(UzhVM::R1);

  if (TFI->hasFP(MF)) {
    Reserved.set(UzhVM::R2);
  }
  return Reserved;
}

bool UzhVMRegisterInfo::requiresRegisterScavenging(
    const MachineFunction &MF) const {
  return false;
}

bool UzhVMRegisterInfo::eliminateFrameIndex(MachineBasicBlock::iterator II,
                                          int SPAdj, unsigned FIOperandNum,
                                          RegScavenger *RS) const {
  UZHVM_DUMP_GREEN
  assert(SPAdj == 0 && "Unexpected non-zero SPAdj value");

  MachineInstr &MI = *II;
  MachineFunction &MF = *MI.getParent()->getParent();
  DebugLoc DL = MI.getDebugLoc();

  int FrameIndex = MI.getOperand(FIOperandNum).getIndex();
  Register FrameReg;
  int Offset = getFrameLowering(MF)
                   ->getFrameIndexReference(MF, FrameIndex, FrameReg)
                   .getFixed();
  Offset += MI.getOperand(FIOperandNum + 1).getImm();

  if (!isInt<16>(Offset)) {
    llvm_unreachable("");
  }

  MI.getOperand(FIOperandNum).ChangeToRegister(FrameReg, false, false, false);
  MI.getOperand(FIOperandNum + 1).ChangeToImmediate(Offset);
  return false;
}

Register UzhVMRegisterInfo::getFrameRegister(const MachineFunction &MF) const {
  UZHVM_DUMP_GREEN
  const TargetFrameLowering *TFI = getFrameLowering(MF);
  return TFI->hasFP(MF) ? UzhVM::R2 : UzhVM::R1;
}

const uint32_t *
UzhVMRegisterInfo::getCallPreservedMask(const MachineFunction &MF,
                                      CallingConv::ID CC) const {
  UZHVM_DUMP_GREEN
  return CSR_UzhVM_RegMask;
}
