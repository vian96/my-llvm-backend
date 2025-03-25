add_llvm_component_library(LLVMUzhVMInfo
  UzhVMTargetInfo.cpp

  LINK_COMPONENTS
  MC
  Support

  ADD_TO_COMPONENT
  UzhVM
  )
