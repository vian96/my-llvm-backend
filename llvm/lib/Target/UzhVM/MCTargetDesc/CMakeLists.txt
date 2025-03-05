add_llvm_component_library(LLVMUzhVMDesc
  UzhVMMCTargetDesc.cpp

  LINK_COMPONENTS
  MC
  Support
  UzhVMInfo

  ADD_TO_COMPONENT
  UzhVM
)
