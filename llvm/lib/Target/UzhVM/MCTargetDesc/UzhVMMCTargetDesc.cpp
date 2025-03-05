#include "UzhVMMCTargetDesc.h"

// We need to define this function for linking succeed
extern "C" void LLVMInitializeUzhVMTargetMC() {int x = 0;}
