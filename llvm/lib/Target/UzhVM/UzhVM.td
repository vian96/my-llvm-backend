include "llvm/Target/Target.td"
include "UzhVMRegisterInfo.td"
include "UzhVMInstrInfo.td"
include "UzhVMCallingConv.td"

class Proc<string Name, list<SubtargetFeature> Features>
 : Processor<Name, NoItineraries, Features>;

def : Proc<"generic", []>;

def UzhVMInstrInfo : InstrInfo;
def UzhVM : Target {
  let InstructionSet = UzhVMInstrInfo;
}
