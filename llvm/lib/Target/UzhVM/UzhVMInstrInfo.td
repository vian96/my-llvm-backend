//===----------------------------------------------------------------------===//
// UzhVM profiles and nodes
//===----------------------------------------------------------------------===//

def SDT_UzhVMBrCC  : SDTypeProfile<0, 2, [ SDTCisVT<0, i32>,
                                         SDTCisVT<1, OtherVT>]>;

def uzhVM_brcc     : SDNode<"UzhVMISD::BR_CC", SDT_UzhVMBrCC,
                            [SDNPHasChain]>;

def uzhVM_ret      : SDNode<"UzhVMISD::RET", SDTNone,
                            [SDNPHasChain, SDNPOptInGlue, SDNPVariadic]>;

//===----------------------------------------------------------------------===//
// Instruction format superclass
//===----------------------------------------------------------------------===//

include "UzhVMInstrFormats.td"

//===----------------------------------------------------------------------===//
// UzhVM Operand, Complex Patterns and Transformations Definitions.
//===----------------------------------------------------------------------===//


class SImmAsmOperand<int width> : AsmOperandClass {
  let Name = "SImm" # width;
  let RenderMethod = "addImmOperands";
  let DiagnosticType = !strconcat("Invalid", Name);
}

def simm16 : Operand<i32>, ImmLeaf<i32, [{return isUInt<16>(Imm);}]> {
  let ParserMatchClass = SImmAsmOperand<16>;
  let EncoderMethod = "getSImm16OpValue";
  let DecoderMethod = "decodeSImmOperand<16>";
  let MCOperandPredicate = [{
    int64_t Imm;
    if (MCOp.evaluateAsConstantImm(Imm))
      return isInt<16>(Imm);
    return MCOp.isBareSymbolRef();
  }];
  let OperandType = "OPERAND_SIMM16";
  let OperandNamespace = "UzhVMOp";
}

def btarget16 : Operand<OtherVT> {
  let ParserMatchClass = SImmAsmOperand<16>;
  let PrintMethod = "printBranchOperand";
  let EncoderMethod = "getBranchTarget16OpValue";
  let DecoderMethod = "decodeSImmOperand<16>";
  let MCOperandPredicate = [{
    int64_t Imm;
    if (MCOp.evaluateAsConstantImm(Imm))
      return isInt<16>(Imm);
    return MCOp.isBareSymbolRef();
  }];
  let OperandType = "OPERAND_PCREL";
}

def LI16 : SDNodeXForm<imm, [{
  return CurDAG->getTargetConstant((uint64_t)N->getZExtValue() & 0xffff,
                                  SDLoc(N), MVT::i32);
}]>;

def HI16 : SDNodeXForm<imm, [{
  return CurDAG->getTargetConstant((uint64_t)N->getZExtValue() >> 16, SDLoc(N),
                                  MVT::i32);
}]>;

//===----------------------------------------------------------------------===//
// Instructions specific format
//===----------------------------------------------------------------------===//

let hasSideEffects = 0, mayLoad = 0, mayStore = 0 in
class IncCCi<bits<8> op>
    : UzhVMInst<op, (outs GPR:$r1, GPR:$r2_), (ins GPR:$r2, simm16:$r3_imm),
              NAME#" $r1 $r2 $r3_imm", []>;

let hasSideEffects = 0, mayLoad = 0, mayStore = 0 in
multiclass Arithm<bits<8> opcode, SDPatternOperator op> {
    def NAME  : UzhVMInst<opcode, (outs GPR:$r1), (ins GPR:$r2, GPR:$r3_imm),
                         NAME#" $r1 $r2 $r3_imm",
                         [(set GPR:$r1, (op GPR:$r2, GPR:$r3_imm))]>;
    def NAME#I : UzhVMInst<!add(opcode,0x10), (outs GPR:$r1), (ins GPR:$r2, simm16:$r3_imm),
                         NAME#"i $r1 $r2 $r3_imm",
                         [(set GPR:$r1, (op GPR:$r2, simm16:$r3_imm))]>;
}

//===----------------------------------------------------------------------===//
// UzhVM Instructions
//===----------------------------------------------------------------------===//

let hasSideEffects = 0, mayLoad = 0, mayStore = 0, isBarrier = 1, isBranch = 1, isTerminator = 1, r1 = 0, r2 = 0 in
def B : UzhVMInst<0xB0, (outs), (ins btarget16:$r3_imm), "B $r3_imm",
                [(br bb:$r3_imm)]>;


let hasSideEffects = 0, mayLoad = 0, mayStore = 0, isCall = 1, isBranch = 1, isTerminator = 1, r2 = 0, r3_imm = 0 in
def BR : UzhVMInst<0xBA, (outs), (ins GPR:$r1), "BR $r1",
                 [(brind GPR:$r1)]>;

let isBarrier = 1, isReturn = 1, isTerminator = 1 in
def PseudoRET : UzhVMPseudoInst<(outs), (ins), "# PseudoRET",
                [(uzhVM_ret)]>,
                PseudoInstExpansion<(BR R0)>;

let isBranch = 1, isTerminator = 1, r2 = 0 in
def BR_COND : UzhVMInst<0xBC, (outs), (ins GPR:$r1, btarget16:$r3_imm),
                      "BR_COND $r1 $r3_imm", [(uzhVM_brcc GPR:$r1, bb:$r3_imm)]>;

// movli
let isAsCheapAsAMove = 1, isCodeGenOnly = 1, isReMaterializable = 1, r2 = 0 in
def MOVLI : UzhVMInst<0x11, (outs GPR:$r1), (ins simm16:$r3_imm),
                    "MOVli $r1 $r3_imm",
                    [(set GPR:$r1, simm16:$r3_imm)]>;

// movhi
let isAsCheapAsAMove = 1, isCodeGenOnly = 1, isReMaterializable = 1, r2 = 0  in
def MOVHI : UzhVMInst<0xAF, (outs GPR:$r1), (ins simm16:$r3_imm),
                    "MOVhi $r1 $r3_imm", []>;

let hasSideEffects = 1, mayStore = 1, r3_imm = 0 in
def STORER : UzhVMInst<0xA5, (outs), (ins GPR:$r1, GPR:$r2),
                    "STORE $r1, [$r2]",
               [(store GPR:$r1, GPR:$r2)]>;
               //[(store GPR:$r1, (add GPR:$r2, simm16:$r3_imm))]>;


let hasSideEffects = 0, mayLoad = 1, r3_imm = 0 in
def LOADER : UzhVMInst<0xA6, (outs GPR:$r1), (ins GPR:$r2),
                    "LOAD $r1, [$r2]",
               [(set GPR:$r1, (load GPR:$r2))]>;
               //[(set GPR:$r1, (load (add GPR:$r2, simm16:$r3_imm)))]>;



def INC_EQi  : IncCCi<0x90>;
def INC_NEi  : IncCCi<0x91>;
def INC_LEi  : IncCCi<0x92>;
def INC_LTi  : IncCCi<0x93>;
def INC_GEi  : IncCCi<0x94>;
def INC_GTi  : IncCCi<0x95>;

defm ADD : Arithm<0x30, add>;
defm SUB : Arithm<0x31, sub>;
defm MUL : Arithm<0x32, mul>;
defm DIV : Arithm<0x33, sdiv>;
defm OR  : Arithm<0x34, or>;
defm AND : Arithm<0x35, and>;
defm XOR : Arithm<0x36, xor>;
defm SRA : Arithm<0x37, sra>;
defm SRL : Arithm<0x38, srl>;
defm SHL : Arithm<0x39, shl>;
defm UREM: Arithm<0x3a, urem>;

// abs
let r3_imm = 0 in
def ABS : UzhVMInst<0xAB, (outs GPR:$r1), (ins GPR:$r2), "ABS $r1 $r2", [(set GPR:$r1, (abs GPR:$r2))]>;

// flush
let r1 = 0, r2 = 0, r3_imm = 0 in
def FLUSH : UzhVMInst<0xF1, (outs), (ins), "FLUSH", [(int_uzhVM_flush)]>;

// putpixel
def PUTPIXEL : UzhVMInst<0xBB, (outs), (ins GPR:$r1, GPR:$r2, GPR:$r3_imm),
                      "PUTPIXEL $r1 $r2 $r3_imm", [(int_uzhVM_putpixel GPR:$r1, GPR:$r2, GPR:$r3_imm)]>;

// random
let isAsCheapAsAMove = 1, isCodeGenOnly = 1, isReMaterializable = 1, r2 = 0, r3_imm = 0 in
def RAND : UzhVMInst<0x4A, (outs GPR:$r1), (ins),
                      "RAND $r1", [(set GPR:$r1, (int_uzhVM_rand))]>;


// SELECT CRINGE is below

def SDT_UzhVMSelect : SDTypeProfile<1, 2, [SDTCisInt<0>, SDTCisInt<1>, SDTCisInt<2>]>;
def UzhVMISD_SELECT : SDNode<"UzhVMISD::SELECT", SDT_UzhVMSelect, [SDNPHasChain]>;

let Uses = [R10] in // Implicitly uses R10 as the condition register
def SELECT : UzhVMInst<0x2C, (outs GPR:$r1), (ins GPR:$r2, GPR:$r3_imm),
                       "SELECT $r1, $r2, $r3_imm",
                       //[]>;
                       [(set GPR:$r1, (UzhVMISD_SELECT GPR:$r2, GPR:$r3_imm))]>;


// still select cringe tho it's setcc alreay

defm MYSETEQ : Arithm<0x50, seteq>;
defm MYSETULT : Arithm<0x51, setult>;
defm MYSETLT : Arithm<0x52, setlt>;
defm MYSETUGT : Arithm<0x53, setugt>;
defm MYSETGT : Arithm<0x54, setgt>;
//defm MYSETNEQ : Arithm<0x55, setneq>;


//===----------------------------------------------------------------------===//
// UzhVM Other patterns
//===----------------------------------------------------------------------===//

def i32hi16 : Operand<i32>, PatLeaf<(i32 imm), [{
    // i32hi16 predicate - true if the 32-bit immediate has only leftmost 16
    // bits set.
    return ((N->getZExtValue() & 0xFFFF0000UL) == N->getZExtValue());}], HI16> {
}

// i32 imm
def : Pat<(i32 imm:$r3_imm), (ORI (MOVHI (HI16 imm:$r3_imm)), (LI16 imm:$r3_imm))>;
def : Pat<(i32 i32hi16:$r3_imm), (MOVHI i32hi16:$r3_imm)>;

