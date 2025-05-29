define dso_local i32 @main() {
entry:
  br label %loop_header

loop_header:
  %count = phi i32 [ 0, %entry ], [ %new_count, %loop_increment ]

  %loop_cond = icmp eq i32 %count, 100
  br i1 %loop_cond, label %loop_exit, label %loop_body

loop_body:
  %x = call i32 @llvm.uzhVM.rand()
  call void @llvm.uzhVM.putpixel(i32 %x, i32 %count, i32 -1)
  call void @llvm.uzhVM.flush()
  br label %loop_increment

loop_increment:
  %new_count = add i32 %count, 1

  br label %loop_header

loop_exit:
  %y = call i32 @llvm.uzhVM.rand()
  ret i32 %y
}
