add_llvm_component_library(LLVMUzhVMDesc
  UzhVMMCTargetDesc.cpp
  UzhVMMCAsmInfo.cpp
  UzhVMInstPrinter.cpp
  UzhVMMCCodeEmitter.cpp
  UzhVMAsmBackend.cpp
  UzhVMELFObjectWriter.cpp

  LINK_COMPONENTS
  MC
  Support
  UzhVMInfo

  ADD_TO_COMPONENT
  UzhVM
 )
