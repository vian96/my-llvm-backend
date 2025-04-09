define dso_local i32 @main() {
  ; int_uzhVM_flush: ClangBuiltin<"simFlush">,
  call void @llvm.uzhVM.putpixel(i32 4, i32 5, i32 -1)
  call void @llvm.uzhVM.flush()
  %x = call i32 @llvm.uzhVM.rand()
  ret i32 %x
}
