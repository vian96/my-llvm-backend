; ModuleID = '../llvm_course/uzh/tt.ll'
source_filename = "top"

declare i32 @simPutPixel(i32, i32, i32) local_unnamed_addr

declare void @print(i32) local_unnamed_addr

declare i32 @simFlush() local_unnamed_addr

declare i32 @simRand() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @is_bad_pnt(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %2 = add i32 %0, -700
  %3 = icmp ult i32 %2, -699
  %4 = add i32 %1, -500
  %5 = icmp ult i32 %4, -499
  %6 = or i1 %3, %5
  %ans.sroa.0.sroa.0 = alloca i8, align 4
  store i1 %6, ptr %ans.sroa.0.sroa.0, align 4
  %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. = load i8, ptr %ans.sroa.0.sroa.0, align 4
  %ans.sroa.0.0.insert.ext = zext i8 %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. to i32
  ret i32 %ans.sroa.0.0.insert.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @is_good_pnt(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 699
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 499
  %6 = and i1 %3, %5
  %ans.sroa.0.sroa.0 = alloca i8, align 4
  store i1 %6, ptr %ans.sroa.0.sroa.0, align 4
  %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. = load i8, ptr %ans.sroa.0.sroa.0, align 4
  %ans.sroa.0.0.insert.ext = zext i8 %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. to i32
  ret i32 %ans.sroa.0.0.insert.ext
}

define i32 @drawLine(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr {
entry:
  %ans.sroa.0.sroa.0.i10 = alloca i8, align 4
  %5 = shl i32 %4, 16
  %6 = add i32 %5, -16776961
  br label %7

7:                                                ; preds = %entry, %23
  %step.013 = phi i32 [ 0, %entry ], [ %24, %23 ]
  %8 = mul i32 %step.013, %2
  %9 = sdiv i32 %8, 10
  %10 = add i32 %9, %0
  %11 = mul i32 %step.013, %3
  %12 = sdiv i32 %11, 10
  %13 = add i32 %12, %1
  %14 = add i32 %10, -1
  %15 = icmp ult i32 %14, 699
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %16, 499
  %18 = and i1 %15, %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %18, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %19 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11, 1
  %.not = icmp eq i8 %19, 0
  br i1 %.not, label %23, label %21

20:                                               ; preds = %23
  ret i32 0

21:                                               ; preds = %7
  %22 = tail call i32 @simPutPixel(i32 %10, i32 %13, i32 %6)
  br label %23

23:                                               ; preds = %21, %7
  %24 = add nuw nsw i32 %step.013, 1
  %25 = icmp ult i32 %step.013, 9
  br i1 %25, label %7, label %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @getAbsVelocity(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %spec.select = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
  %v2.0 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %2 = add i32 %v2.0, %spec.select
  ret i32 %2
}

; Function Attrs: noreturn
define i32 @app() local_unnamed_addr #1 {
entry:
  %ans.sroa.0.sroa.0.i10.i = alloca i8, align 4
  %ans.sroa.0.sroa.0.i = alloca i8, align 4
  br label %0

0:                                                ; preds = %drawLine.exit, %entry
  %x.0 = phi i32 [ 0, %entry ], [ %53, %drawLine.exit ]
  %y.0 = phi i32 [ 0, %entry ], [ %54, %drawLine.exit ]
  %1 = tail call i32 @simRand()
  %2 = sdiv i32 %x.0, 100
  %3 = sdiv i32 %y.0, 100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i)
  %4 = add nsw i32 %2, -700
  %5 = icmp ult i32 %4, -699
  %6 = add nsw i32 %3, -500
  %7 = icmp ult i32 %6, -499
  %8 = or i1 %5, %7
  store i1 %8, ptr %ans.sroa.0.sroa.0.i, align 4
  %ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i = load i8, ptr %ans.sroa.0.sroa.0.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i)
  %9 = and i8 %ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i, 1
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %19, label %10

10:                                               ; preds = %0
  tail call void @print(i32 222)
  %11 = tail call i32 @simRand()
  %12 = srem i32 %11, 700
  %13 = mul nsw i32 %12, 100
  %14 = add nsw i32 %13, 35000
  %15 = tail call i32 @simRand()
  %16 = srem i32 %15, 500
  %17 = mul nsw i32 %16, 100
  %18 = add nsw i32 %17, 25000
  br label %19

19:                                               ; preds = %10, %0
  %x.1 = phi i32 [ %14, %10 ], [ %x.0, %0 ]
  %y.1 = phi i32 [ %18, %10 ], [ %y.0, %0 ]
  %20 = mul i32 %x.1, 250
  %21 = mul i32 %y.1, %x.1
  %22 = sdiv i32 %21, 100
  %23 = sub i32 %20, %22
  %24 = sdiv i32 %23, 10000
  %.neg = mul i32 %y.1, -350
  %25 = add i32 %22, %.neg
  %26 = sdiv i32 %25, 10000
  %27 = sdiv i32 %x.1, 100
  %28 = sdiv i32 %y.1, 100
  %29 = sdiv i32 %23, 1000000
  %30 = sdiv i32 %25, 1000000
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %24, i1 false)
  %v2.0.i = tail call i32 @llvm.abs.i32(i32 %26, i1 false)
  %31 = add nsw i32 %v2.0.i, %spec.select.i
  %32 = shl i32 %31, 16
  %33 = add i32 %32, -16776961
  br label %34

34:                                               ; preds = %49, %19
  %step.013.i = phi i32 [ 0, %19 ], [ %50, %49 ]
  %35 = mul nsw i32 %step.013.i, %29
  %36 = sdiv i32 %35, 10
  %37 = add nsw i32 %36, %27
  %38 = mul nsw i32 %step.013.i, %30
  %39 = sdiv i32 %38, 10
  %40 = add nsw i32 %39, %28
  %41 = add nsw i32 %37, -1
  %42 = icmp ult i32 %41, 699
  %43 = add nsw i32 %40, -1
  %44 = icmp ult i32 %43, 499
  %45 = and i1 %42, %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %45, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %46 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i, 1
  %.not.i = icmp eq i8 %46, 0
  br i1 %.not.i, label %49, label %47

47:                                               ; preds = %34
  %48 = tail call i32 @simPutPixel(i32 %37, i32 %40, i32 %33)
  br label %49

49:                                               ; preds = %47, %34
  %50 = add nuw nsw i32 %step.013.i, 1
  %51 = icmp ult i32 %step.013.i, 9
  br i1 %51, label %34, label %drawLine.exit

drawLine.exit:                                    ; preds = %49
  %52 = tail call i32 @simFlush()
  %53 = add i32 %24, %x.1
  %54 = add i32 %26, %y.1
  br label %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { noreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
