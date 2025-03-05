add_llvm_component_group(UzhVM)

add_llvm_target(UzhVMCodeGen
  UzhVMTargetMachine.cpp

  LINK_COMPONENTS
  CodeGen
  Core
  Support
  Target
  UzhVMInfo

  ADD_TO_COMPONENT
  UzhVM
  )

add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
