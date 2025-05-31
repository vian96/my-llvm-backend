define dso_local i32 @main() {


;define i32 @is_good_pnt(i32 %0, i32 %1) local_unnamed_addr #0 {
  %ptr = alloca i32, align 4

  store i32 42, i32* %ptr, align 4

  %loaded_val = load i32, i32* %ptr, align 4


  %x = call i32 @llvm.uzhVM.rand()

  %cnd = icmp sgt i32 %x, 10
  br i1 %cnd, label %if_true, label %if_false

if_true:
  ret i32 20

if_false:
  ;ret i32 5


  ret i32 %loaded_val
}

;define i32 @is_bad_pnt(i32 %0, i32 %1) local_unnamed_addr #0 {
;entry:
;  %2 = add i32 %0, -700
;  %3 = icmp ult i32 %2, -699
;  %4 = add i32 %1, -500
;  %5 = icmp ult i32 %4, -499
;  %6 = or i1 %3, %5
;  %ans.sroa.0.sroa.0 = alloca i8, align 4
;  store i1 %6, ptr %ans.sroa.0.sroa.0, align 4
;  %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. = load i8, ptr %ans.sroa.0.sroa.0, align 4
;  %ans.sroa.0.0.insert.ext = zext i8 %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. to i32
;  ret i32 %ans.sroa.0.0.insert.ext
;}


