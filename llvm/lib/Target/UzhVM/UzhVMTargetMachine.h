#ifndef LLVM_LIB_TARGET_UZHVM_UZHVMTARGETMACHINE_H
#define LLVM_LIB_TARGET_UZHVM_UZHVMTARGETMACHINE_H

#include "UzhVMSubtarget.h"
#include "llvm/CodeGen/CodeGenTargetMachineImpl.h"
#include <optional>

namespace llvm {
extern Target TheUzhVMTarget;

class UzhVMTargetMachine : public CodeGenTargetMachineImpl {
  std::unique_ptr<TargetLoweringObjectFile> TLOF;
  UzhVMSubtarget Subtarget;

public:
  UzhVMTargetMachine(const Target &T, const Triple &TT, StringRef CPU,
                   StringRef FS, const TargetOptions &Options,
                   std::optional<Reloc::Model> RM,
                   std::optional<CodeModel::Model> CM, CodeGenOptLevel OL,
                   bool JIT);

  const UzhVMSubtarget *getSubtargetImpl(const Function &) const override {
    UZHVM_DUMP_CYAN
    return &Subtarget;
  }
  // Pass Pipeline Configuration
  TargetPassConfig *createPassConfig(PassManagerBase &PM) override;
  TargetLoweringObjectFile *getObjFileLowering() const override;
};
} // end namespace llvm

#endif // LLVM_LIB_TARGET_UZHVM_UZHVMTARGETMACHINE_H
