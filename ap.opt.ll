; ModuleID = 'app.ll'
source_filename = "app.ll"

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %x = tail call i32 @llvm.uzhVM.rand()
  br label %loop_body

loop_body:                                        ; preds = %entry, %loop_body
  %count1 = phi i32 [ 0, %entry ], [ %new_count, %loop_body ]
  tail call void @llvm.uzhVM.putpixel(i32 %x, i32 %count1, i32 -1)
  tail call void @llvm.uzhVM.flush()
  %new_count = add nuw nsw i32 %count1, 1
  %loop_cond = icmp eq i32 %new_count, 100
  br i1 %loop_cond, label %loop_exit, label %loop_body

loop_exit:                                        ; preds = %loop_body
  ret i32 %x
}

; Function Attrs: nounwind
declare void @llvm.uzhVM.flush() #0

; Function Attrs: nounwind
declare void @llvm.uzhVM.putpixel(i32, i32, i32) #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.uzhVM.rand() #1

attributes #0 = { nounwind }
attributes #1 = { nofree nosync nounwind memory(none) }
