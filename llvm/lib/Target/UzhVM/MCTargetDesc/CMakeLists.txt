add_llvm_component_library(LLVMUzhVMDesc
  UzhVMMCTargetDesc.cpp
  UzhVMMCAsmInfo.cpp
  UzhVMInstPrinter.cpp

  LINK_COMPONENTS
  MC
  Support
  UzhVMInfo

  ADD_TO_COMPONENT
  UzhVM
 )
