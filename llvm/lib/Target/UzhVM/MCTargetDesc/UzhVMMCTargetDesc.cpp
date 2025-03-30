#include "MCTargetDesc/UzhVMInfo.h"
#include "UzhVM.h"
#include "UzhVMInstPrinter.h"
#include "UzhVMMCAsmInfo.h"
#include "TargetInfo/UzhVMTargetInfo.h"
#include "llvm/MC/MCDwarf.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define GET_REGINFO_MC_DESC
#include "UzhVMGenRegisterInfo.inc"

#define GET_INSTRINFO_MC_DESC
#include "UzhVMGenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "UzhVMGenSubtargetInfo.inc"

static MCRegisterInfo *createUzhVMMCRegisterInfo(const Triple &TT) {
  UZHVM_DUMP_MAGENTA
  MCRegisterInfo *X = new MCRegisterInfo();
  InitUzhVMMCRegisterInfo(X, UzhVM::R0);
  return X;
}

static MCInstrInfo *createUzhVMMCInstrInfo() {
  UZHVM_DUMP_MAGENTA
  MCInstrInfo *X = new MCInstrInfo();
  InitUzhVMMCInstrInfo(X);
  return X;
}

static MCSubtargetInfo *createUzhVMMCSubtargetInfo(const Triple &TT,
                                                 StringRef CPU, StringRef FS) {
  UZHVM_DUMP_MAGENTA
  return createUzhVMMCSubtargetInfoImpl(TT, CPU, /*TuneCPU*/ CPU, FS);
}

static MCAsmInfo *createUzhVMMCAsmInfo(const MCRegisterInfo &MRI,
                                     const Triple &TT,
                                     const MCTargetOptions &Options) {
  UZHVM_DUMP_MAGENTA
  MCAsmInfo *MAI = new UzhVMELFMCAsmInfo(TT);
  unsigned SP = MRI.getDwarfRegNum(UzhVM::R1, true);
  MCCFIInstruction Inst = MCCFIInstruction::cfiDefCfa(nullptr, SP, 0);
  MAI->addInitialFrameState(Inst);
  return MAI;
}

static MCInstPrinter *createUzhVMMCInstPrinter(const Triple &T,
                                             unsigned SyntaxVariant,
                                             const MCAsmInfo &MAI,
                                             const MCInstrInfo &MII,
                                             const MCRegisterInfo &MRI) {
  UZHVM_DUMP_MAGENTA
  return new UzhVMInstPrinter(MAI, MII, MRI);
}

// We need to define this function for linking succeed
extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeUzhVMTargetMC() {
  UZHVM_DUMP_MAGENTA
  Target &TheUzhVMTarget = getTheUzhVMTarget();
  RegisterMCAsmInfoFn X(TheUzhVMTarget, createUzhVMMCAsmInfo);
  // Register the MC register info.
  TargetRegistry::RegisterMCRegInfo(TheUzhVMTarget, createUzhVMMCRegisterInfo);
  // Register the MC instruction info.
  TargetRegistry::RegisterMCInstrInfo(TheUzhVMTarget, createUzhVMMCInstrInfo);
  // Register the MC subtarget info.
  TargetRegistry::RegisterMCSubtargetInfo(TheUzhVMTarget,
                                          createUzhVMMCSubtargetInfo);

  // Register the MCInstPrinter
  TargetRegistry::RegisterMCInstPrinter(TheUzhVMTarget, createUzhVMMCInstPrinter);
  // Register the MC Code Emitter.
  TargetRegistry::RegisterMCCodeEmitter(TheUzhVMTarget, createUzhVMMCCodeEmitter);
  // Register the asm backend.
  TargetRegistry::RegisterMCAsmBackend(TheUzhVMTarget, createUzhVMAsmBackend);
}
