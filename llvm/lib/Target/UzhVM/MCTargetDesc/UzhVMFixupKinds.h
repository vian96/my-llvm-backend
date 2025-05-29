#ifndef LLVM_LIB_TARGET_UZH_VM_MCTARGETDESC_UZH_VMFIXUPKINDS_H
#define LLVM_LIB_TARGET_UZH_VM_MCTARGETDESC_UZH_VMFIXUPKINDS_H

#include "llvm/MC/MCFixup.h"

namespace llvm {
namespace UzhVM {
// Although most of the current fixup types reflect a unique relocation
// one can have multiple fixup types for a given relocation and thus need
// to be uniquely named.
//
// This table *must* be in the same order of
// MCFixupKindInfo Infos[UzhVM::NumTargetFixupKinds]
// in UzhVMAsmBackend.cpp.
//
enum Fixups {
  fixup_UzhVM_PC16 = FirstTargetFixupKind,
  // Marker
  LastTargetFixupKind,
  NumTargetFixupKinds = LastTargetFixupKind - FirstTargetFixupKind
};
} // namespace UzhVM
} // namespace llvm

#endif

