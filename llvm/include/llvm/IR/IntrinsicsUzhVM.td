let TargetPrefix = "uzhVM" in {  // All intrinsics start with "llvm.uzhVM.".

 def int_uzhVM_putpixel: ClangBuiltin<"simPutPixel">,
   Intrinsic<[], [llvm_i32_ty, llvm_i32_ty, llvm_i32_ty], [IntrNoMem, IntrHasSideEffects]>;

 def int_uzhVM_flush: ClangBuiltin<"simFlush">,
   Intrinsic<[], [], [IntrNoMem, IntrHasSideEffects]>;

 def int_uzhVM_rand: ClangBuiltin<"simRand">,
   Intrinsic<[llvm_i32_ty], [], [IntrNoMem]>;

} // TargetPrefix = "uzhVM"

