; ModuleID = 'tt.ll'
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
  %7 = insertelement <2 x i32> poison, i32 %2, i64 0
  %8 = insertelement <2 x i32> %7, i32 %3, i64 1
  %9 = insertelement <2 x i32> poison, i32 %0, i64 0
  %10 = insertelement <2 x i32> %9, i32 %1, i64 1
  br label %11

11:                                               ; preds = %entry, %27
  %step.013 = phi i32 [ 0, %entry ], [ %28, %27 ]
  %12 = insertelement <2 x i32> poison, i32 %step.013, i64 0
  %13 = shufflevector <2 x i32> %12, <2 x i32> poison, <2 x i32> zeroinitializer
  %14 = mul <2 x i32> %13, %8
  %15 = sdiv <2 x i32> %14, <i32 10, i32 10>
  %16 = add <2 x i32> %15, %10
  %17 = add <2 x i32> %16, <i32 -1, i32 -1>
  %18 = icmp ult <2 x i32> %17, <i32 699, i32 499>
  %shift = shufflevector <2 x i1> %18, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %19 = and <2 x i1> %18, %shift
  %20 = extractelement <2 x i1> %19, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %20, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %21 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11, 1
  %.not = icmp eq i8 %21, 0
  br i1 %.not, label %27, label %23

22:                                               ; preds = %27
  ret i32 0

23:                                               ; preds = %11
  %24 = extractelement <2 x i32> %16, i64 0
  %25 = extractelement <2 x i32> %16, i64 1
  %26 = tail call i32 @simPutPixel(i32 %24, i32 %25, i32 %6)
  br label %27

27:                                               ; preds = %23, %11
  %28 = add nuw nsw i32 %step.013, 1
  %29 = icmp ult i32 %step.013, 9
  br i1 %29, label %11, label %22
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
  %1 = phi <2 x i32> [ zeroinitializer, %entry ], [ %56, %drawLine.exit ]
  %2 = tail call i32 @simRand()
  %3 = sdiv <2 x i32> %1, <i32 100, i32 100>
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i)
  %4 = add nsw <2 x i32> %3, <i32 -700, i32 -500>
  %5 = icmp ult <2 x i32> %4, <i32 -699, i32 -499>
  %shift = shufflevector <2 x i1> %5, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %6 = or <2 x i1> %5, %shift
  %7 = extractelement <2 x i1> %6, i64 0
  store i1 %7, ptr %ans.sroa.0.sroa.0.i, align 4
  %ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i = load i8, ptr %ans.sroa.0.sroa.0.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i)
  %8 = and i8 %ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i, 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %18, label %9

9:                                                ; preds = %0
  tail call void @print(i32 222)
  %10 = tail call i32 @simRand()
  %11 = tail call i32 @simRand()
  %12 = insertelement <2 x i32> poison, i32 %10, i64 0
  %13 = insertelement <2 x i32> %12, i32 %11, i64 1
  %14 = srem <2 x i32> %13, <i32 700, i32 500>
  %15 = mul nsw <2 x i32> %14, <i32 100, i32 100>
  %16 = add nsw <2 x i32> %15, <i32 35000, i32 25000>
  %17 = sdiv <2 x i32> %16, <i32 100, i32 100>
  br label %18

18:                                               ; preds = %9, %0
  %19 = phi <2 x i32> [ %16, %9 ], [ %1, %0 ]
  %20 = phi <2 x i32> [ %17, %9 ], [ %3, %0 ]
  %21 = mul <2 x i32> %19, <i32 250, i32 -350>
  %shift33 = shufflevector <2 x i32> %19, <2 x i32> poison, <2 x i32> <i32 1, i32 undef>
  %22 = mul <2 x i32> %shift33, %19
  %23 = extractelement <2 x i32> %22, i64 0
  %24 = sdiv i32 %23, 100
  %25 = insertelement <2 x i32> poison, i32 %24, i64 0
  %26 = shufflevector <2 x i32> %25, <2 x i32> poison, <2 x i32> zeroinitializer
  %27 = sub <2 x i32> %21, %26
  %28 = add <2 x i32> %21, %26
  %29 = shufflevector <2 x i32> %27, <2 x i32> %28, <2 x i32> <i32 0, i32 3>
  %30 = sdiv <2 x i32> %29, <i32 10000, i32 10000>
  %31 = sdiv <2 x i32> %29, <i32 1000000, i32 1000000>
  %32 = extractelement <2 x i32> %30, i64 0
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %32, i1 true)
  %33 = extractelement <2 x i32> %30, i64 1
  %v2.0.i = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %34 = add nuw nsw i32 %v2.0.i, %spec.select.i
  %35 = shl i32 %34, 16
  %36 = add i32 %35, -16776961
  br label %37

37:                                               ; preds = %52, %18
  %step.013.i = phi i32 [ 0, %18 ], [ %53, %52 ]
  %38 = insertelement <2 x i32> poison, i32 %step.013.i, i64 0
  %39 = shufflevector <2 x i32> %38, <2 x i32> poison, <2 x i32> zeroinitializer
  %40 = mul nsw <2 x i32> %39, %31
  %41 = sdiv <2 x i32> %40, <i32 10, i32 10>
  %42 = add nsw <2 x i32> %41, %20
  %43 = add nsw <2 x i32> %42, <i32 -1, i32 -1>
  %44 = icmp ult <2 x i32> %43, <i32 699, i32 499>
  %shift34 = shufflevector <2 x i1> %44, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %45 = and <2 x i1> %44, %shift34
  %46 = extractelement <2 x i1> %45, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %46, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %47 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i, 1
  %.not.i = icmp eq i8 %47, 0
  br i1 %.not.i, label %52, label %48

48:                                               ; preds = %37
  %49 = extractelement <2 x i32> %42, i64 0
  %50 = extractelement <2 x i32> %42, i64 1
  %51 = tail call i32 @simPutPixel(i32 %49, i32 %50, i32 %36)
  br label %52

52:                                               ; preds = %48, %37
  %53 = add nuw nsw i32 %step.013.i, 1
  %54 = icmp ult i32 %step.013.i, 9
  br i1 %54, label %37, label %drawLine.exit

drawLine.exit:                                    ; preds = %52
  %55 = tail call i32 @simFlush()
  %56 = add <2 x i32> %30, %19
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
