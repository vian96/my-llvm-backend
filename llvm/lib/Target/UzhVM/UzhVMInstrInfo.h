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

  void copyPhysReg(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI,
                   const DebugLoc &DL, MCRegister DestReg, MCRegister SrcReg,
                   bool KillSrc, bool RenamableDest = false,
                   bool RenamableSrc = false) const override;

  void storeRegToStackSlot(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator I, Register SrcReg,
                           bool IsKill, int FI, const TargetRegisterClass *RC,
                           const TargetRegisterInfo *TRI, Register VReg,
                           MachineInstr::MIFlag Flags) const override {};
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_UZHVM_UZHVMINSTRINFO_H
