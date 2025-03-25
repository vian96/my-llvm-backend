#include "UzhVMTargetMachine.h"
#include "UzhVM.h"
#include "TargetInfo/UzhVMTargetInfo.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/MC/TargetRegistry.h"
#include <optional>

using namespace llvm;

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeUzhVMTarget() {
  // Register the target.
  UZHVM_DUMP_CYAN
  RegisterTargetMachine<UzhVMTargetMachine> A(getTheUzhVMTarget());
}

UzhVMTargetMachine::UzhVMTargetMachine(const Target &T, const Triple &TT,
                                   StringRef CPU, StringRef FS,
                                   const TargetOptions &Options,
                                   std::optional<Reloc::Model> RM,
                                   std::optional<CodeModel::Model> CM,
                                   CodeGenOptLevel OL, bool JIT)
    : CodeGenTargetMachineImpl(T, "e-m:e-p:32:32-i8:8:32-i16:16:32-i64:64-n32",
                               TT, CPU, FS, Options, Reloc::Static,
                               getEffectiveCodeModel(CM, CodeModel::Small), OL),
      TLOF(std::make_unique<TargetLoweringObjectFileELF>()),
      Subtarget(TT, std::string(CPU), std::string(FS), *this) {
  UZHVM_DUMP_CYAN
  initAsmInfo();
}

namespace {

/// UzhVM Code Generator Pass Configuration Options.
class UzhVMPassConfig : public TargetPassConfig {
public:
  UzhVMPassConfig(UzhVMTargetMachine &TM, PassManagerBase &PM)
      : TargetPassConfig(TM, PM) {}

  UzhVMTargetMachine &getUzhVMTargetMachine() const {
    return getTM<UzhVMTargetMachine>();
  }

  bool addInstSelector() override {
    UZHVM_DUMP_CYAN
    addPass(createUzhVMISelDag(getUzhVMTargetMachine(), getOptLevel()));
    return false;
  }
};

} // end anonymous namespace

TargetPassConfig *UzhVMTargetMachine::createPassConfig(PassManagerBase &PM) {
  UZHVM_DUMP_CYAN
  return new UzhVMPassConfig(*this, PM);
}

TargetLoweringObjectFile *UzhVMTargetMachine::getObjFileLowering() const {
  UZHVM_DUMP_CYAN
  return TLOF.get();
}
