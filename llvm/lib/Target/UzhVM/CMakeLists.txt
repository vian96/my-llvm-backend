add_llvm_component_group(UzhVM)

set(LLVM_TARGET_DEFINITIONS UzhVM.td)

tablegen(LLVM UzhVMGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM UzhVMGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM UzhVMGenSubtargetInfo.inc -gen-subtarget)
tablegen(LLVM UzhVMGenMCPseudoLowering.inc -gen-pseudo-lowering)
tablegen(LLVM UzhVMGenDAGISel.inc -gen-dag-isel)
tablegen(LLVM UzhVMGenCallingConv.inc -gen-callingconv)
tablegen(LLVM UzhVMGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM UzhVMGenMCCodeEmitter.inc -gen-emitter)

add_public_tablegen_target(UzhVMCommonTableGen)

add_llvm_target(UzhVMCodeGen
  UzhVMTargetMachine.cpp
  UzhVMRegisterInfo.cpp
  UzhVMInstrInfo.cpp
  UzhVMSubtarget.cpp
  UzhVMAsmPrinter.cpp
  UzhVMISelDagToDag.cpp
  UzhVMISelLowering.cpp
  UzhVMMCInstLower.cpp

  LINK_COMPONENTS
  CodeGen
  Core
  Support
  Target
  UzhVMInfo
  AsmPrinter
  SelectionDAG

  ADD_TO_COMPONENT
  UzhVM
  )

add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
