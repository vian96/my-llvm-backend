; ModuleID = 'app.ll'
source_filename = "app.ll"

; Function Attrs: nofree nosync nounwind memory(none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %y = tail call i32 @llvm.uzhVM.rand()
  ret i32 %y
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.uzhVM.rand() #0

attributes #0 = { nofree nosync nounwind memory(none) }
