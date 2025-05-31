; ModuleID = 'cur.ll'
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
  %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. = load i8, ptr %ans.sroa.0.sroa.0, align 4
  %ans.sroa.0.0.insert.ext = zext i8 %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. to i32
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
  %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. = load i8, ptr %ans.sroa.0.sroa.0, align 4
  %ans.sroa.0.0.insert.ext = zext i8 %ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0. to i32
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
  %11 = add <2 x i32> %10, <i32 -1, i32 -1>
  %12 = icmp ult <2 x i32> %11, <i32 699, i32 499>
  %shift = shufflevector <2 x i1> %12, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %13 = and <2 x i1> %shift, %12
  %14 = extractelement <2 x i1> %13, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %14, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %15 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11, 1
  %.not = icmp eq i8 %15, 0
  br i1 %.not, label %18, label %16

16:                                               ; preds = %entry
  %17 = tail call i32 @simPutPixel(i32 %0, i32 %1, i32 %6)
  br label %18

18:                                               ; preds = %16, %entry
  %19 = sdiv <2 x i32> %8, <i32 10, i32 10>
  %20 = add <2 x i32> %19, %10
  %21 = add <2 x i32> %20, <i32 -1, i32 -1>
  %22 = icmp ult <2 x i32> %21, <i32 699, i32 499>
  %shift.1 = shufflevector <2 x i1> %22, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %23 = and <2 x i1> %shift.1, %22
  %24 = extractelement <2 x i1> %23, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %24, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.1 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %25 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.1, 1
  %.not.1 = icmp eq i8 %25, 0
  br i1 %.not.1, label %30, label %26

26:                                               ; preds = %18
  %27 = extractelement <2 x i32> %20, i64 0
  %28 = extractelement <2 x i32> %20, i64 1
  %29 = tail call i32 @simPutPixel(i32 %27, i32 %28, i32 %6)
  br label %30

30:                                               ; preds = %26, %18
  %31 = shl <2 x i32> %8, <i32 1, i32 1>
  %32 = sdiv <2 x i32> %31, <i32 10, i32 10>
  %33 = add <2 x i32> %32, %10
  %34 = add <2 x i32> %33, <i32 -1, i32 -1>
  %35 = icmp ult <2 x i32> %34, <i32 699, i32 499>
  %shift.2 = shufflevector <2 x i1> %35, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %36 = and <2 x i1> %shift.2, %35
  %37 = extractelement <2 x i1> %36, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %37, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.2 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %38 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.2, 1
  %.not.2 = icmp eq i8 %38, 0
  br i1 %.not.2, label %43, label %39

39:                                               ; preds = %30
  %40 = extractelement <2 x i32> %33, i64 0
  %41 = extractelement <2 x i32> %33, i64 1
  %42 = tail call i32 @simPutPixel(i32 %40, i32 %41, i32 %6)
  br label %43

43:                                               ; preds = %39, %30
  %44 = mul <2 x i32> %8, <i32 3, i32 3>
  %45 = sdiv <2 x i32> %44, <i32 10, i32 10>
  %46 = add <2 x i32> %45, %10
  %47 = add <2 x i32> %46, <i32 -1, i32 -1>
  %48 = icmp ult <2 x i32> %47, <i32 699, i32 499>
  %shift.3 = shufflevector <2 x i1> %48, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %49 = and <2 x i1> %shift.3, %48
  %50 = extractelement <2 x i1> %49, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %50, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.3 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %51 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.3, 1
  %.not.3 = icmp eq i8 %51, 0
  br i1 %.not.3, label %56, label %52

52:                                               ; preds = %43
  %53 = extractelement <2 x i32> %46, i64 0
  %54 = extractelement <2 x i32> %46, i64 1
  %55 = tail call i32 @simPutPixel(i32 %53, i32 %54, i32 %6)
  br label %56

56:                                               ; preds = %52, %43
  %57 = shl <2 x i32> %8, <i32 2, i32 2>
  %58 = sdiv <2 x i32> %57, <i32 10, i32 10>
  %59 = add <2 x i32> %58, %10
  %60 = add <2 x i32> %59, <i32 -1, i32 -1>
  %61 = icmp ult <2 x i32> %60, <i32 699, i32 499>
  %shift.4 = shufflevector <2 x i1> %61, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %62 = and <2 x i1> %shift.4, %61
  %63 = extractelement <2 x i1> %62, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %63, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.4 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %64 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.4, 1
  %.not.4 = icmp eq i8 %64, 0
  br i1 %.not.4, label %69, label %65

65:                                               ; preds = %56
  %66 = extractelement <2 x i32> %59, i64 0
  %67 = extractelement <2 x i32> %59, i64 1
  %68 = tail call i32 @simPutPixel(i32 %66, i32 %67, i32 %6)
  br label %69

69:                                               ; preds = %65, %56
  %70 = mul <2 x i32> %8, <i32 5, i32 5>
  %71 = sdiv <2 x i32> %70, <i32 10, i32 10>
  %72 = add <2 x i32> %71, %10
  %73 = add <2 x i32> %72, <i32 -1, i32 -1>
  %74 = icmp ult <2 x i32> %73, <i32 699, i32 499>
  %shift.5 = shufflevector <2 x i1> %74, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %75 = and <2 x i1> %shift.5, %74
  %76 = extractelement <2 x i1> %75, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %76, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.5 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %77 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.5, 1
  %.not.5 = icmp eq i8 %77, 0
  br i1 %.not.5, label %82, label %78

78:                                               ; preds = %69
  %79 = extractelement <2 x i32> %72, i64 0
  %80 = extractelement <2 x i32> %72, i64 1
  %81 = tail call i32 @simPutPixel(i32 %79, i32 %80, i32 %6)
  br label %82

82:                                               ; preds = %78, %69
  %83 = mul <2 x i32> %8, <i32 6, i32 6>
  %84 = sdiv <2 x i32> %83, <i32 10, i32 10>
  %85 = add <2 x i32> %84, %10
  %86 = add <2 x i32> %85, <i32 -1, i32 -1>
  %87 = icmp ult <2 x i32> %86, <i32 699, i32 499>
  %shift.6 = shufflevector <2 x i1> %87, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %88 = and <2 x i1> %shift.6, %87
  %89 = extractelement <2 x i1> %88, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %89, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.6 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %90 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.6, 1
  %.not.6 = icmp eq i8 %90, 0
  br i1 %.not.6, label %95, label %91

91:                                               ; preds = %82
  %92 = extractelement <2 x i32> %85, i64 0
  %93 = extractelement <2 x i32> %85, i64 1
  %94 = tail call i32 @simPutPixel(i32 %92, i32 %93, i32 %6)
  br label %95

95:                                               ; preds = %91, %82
  %96 = mul <2 x i32> %8, <i32 7, i32 7>
  %97 = sdiv <2 x i32> %96, <i32 10, i32 10>
  %98 = add <2 x i32> %97, %10
  %99 = add <2 x i32> %98, <i32 -1, i32 -1>
  %100 = icmp ult <2 x i32> %99, <i32 699, i32 499>
  %shift.7 = shufflevector <2 x i1> %100, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %101 = and <2 x i1> %shift.7, %100
  %102 = extractelement <2 x i1> %101, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %102, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.7 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %103 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.7, 1
  %.not.7 = icmp eq i8 %103, 0
  br i1 %.not.7, label %108, label %104

104:                                              ; preds = %95
  %105 = extractelement <2 x i32> %98, i64 0
  %106 = extractelement <2 x i32> %98, i64 1
  %107 = tail call i32 @simPutPixel(i32 %105, i32 %106, i32 %6)
  br label %108

108:                                              ; preds = %104, %95
  %109 = shl <2 x i32> %8, <i32 3, i32 3>
  %110 = sdiv <2 x i32> %109, <i32 10, i32 10>
  %111 = add <2 x i32> %110, %10
  %112 = add <2 x i32> %111, <i32 -1, i32 -1>
  %113 = icmp ult <2 x i32> %112, <i32 699, i32 499>
  %shift.8 = shufflevector <2 x i1> %113, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %114 = and <2 x i1> %shift.8, %113
  %115 = extractelement <2 x i1> %114, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %115, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.8 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %116 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.8, 1
  %.not.8 = icmp eq i8 %116, 0
  br i1 %.not.8, label %121, label %117

117:                                              ; preds = %108
  %118 = extractelement <2 x i32> %111, i64 0
  %119 = extractelement <2 x i32> %111, i64 1
  %120 = tail call i32 @simPutPixel(i32 %118, i32 %119, i32 %6)
  br label %121

121:                                              ; preds = %117, %108
  %122 = mul <2 x i32> %8, <i32 9, i32 9>
  %123 = sdiv <2 x i32> %122, <i32 10, i32 10>
  %124 = add <2 x i32> %123, %10
  %125 = add <2 x i32> %124, <i32 -1, i32 -1>
  %126 = icmp ult <2 x i32> %125, <i32 699, i32 499>
  %shift.9 = shufflevector <2 x i1> %126, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %127 = and <2 x i1> %shift.9, %126
  %128 = extractelement <2 x i1> %127, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  store i1 %128, ptr %ans.sroa.0.sroa.0.i10, align 4
  %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.9 = load i8, ptr %ans.sroa.0.sroa.0.i10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10)
  %129 = and i8 %ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.9, 1
  %.not.9 = icmp eq i8 %129, 0
  br i1 %.not.9, label %134, label %130

130:                                              ; preds = %121
  %131 = extractelement <2 x i32> %124, i64 0
  %132 = extractelement <2 x i32> %124, i64 1
  %133 = tail call i32 @simPutPixel(i32 %131, i32 %132, i32 %6)
  br label %134

134:                                              ; preds = %130, %121
  ret i32 0
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
  %1 = phi <2 x i32> [ zeroinitializer, %entry ], [ %161, %drawLine.exit ]
  %2 = tail call i32 @simRand()
  %3 = sdiv <2 x i32> %1, <i32 100, i32 100>
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i)
  %4 = add nsw <2 x i32> %3, <i32 -700, i32 -500>
  %5 = icmp ult <2 x i32> %4, <i32 -699, i32 -499>
  %shift = shufflevector <2 x i1> %5, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %6 = or <2 x i1> %shift, %5
  %7 = extractelement <2 x i1> %6, i64 0
  store i1 %7, ptr %ans.sroa.0.sroa.0.i, align 4
  %ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i = load i8, ptr %ans.sroa.0.sroa.0.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i)
  %8 = and i8 %ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.i.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i, 1
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
  %28 = add <2 x i32> %26, %21
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
  %37 = add nsw <2 x i32> %20, <i32 -1, i32 -1>
  %38 = icmp ult <2 x i32> %37, <i32 699, i32 499>
  %shift34 = shufflevector <2 x i1> %38, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %39 = and <2 x i1> %shift34, %38
  %40 = extractelement <2 x i1> %39, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %40, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %41 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i, 1
  %.not.i = icmp eq i8 %41, 0
  br i1 %.not.i, label %46, label %42

42:                                               ; preds = %18
  %43 = extractelement <2 x i32> %20, i64 0
  %44 = extractelement <2 x i32> %20, i64 1
  %45 = tail call i32 @simPutPixel(i32 %43, i32 %44, i32 %36)
  br label %46

46:                                               ; preds = %42, %18
  %47 = sdiv <2 x i32> %29, <i32 10000000, i32 10000000>
  %48 = add nsw <2 x i32> %47, %20
  %49 = add nsw <2 x i32> %48, <i32 -1, i32 -1>
  %50 = icmp ult <2 x i32> %49, <i32 699, i32 499>
  %shift34.1 = shufflevector <2 x i1> %50, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %51 = and <2 x i1> %shift34.1, %50
  %52 = extractelement <2 x i1> %51, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %52, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.1 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %53 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.1, 1
  %.not.i.1 = icmp eq i8 %53, 0
  br i1 %.not.i.1, label %58, label %54

54:                                               ; preds = %46
  %55 = extractelement <2 x i32> %48, i64 0
  %56 = extractelement <2 x i32> %48, i64 1
  %57 = tail call i32 @simPutPixel(i32 %55, i32 %56, i32 %36)
  br label %58

58:                                               ; preds = %54, %46
  %59 = sdiv <2 x i32> %29, <i32 5000000, i32 5000000>
  %60 = add nsw <2 x i32> %59, %20
  %61 = add nsw <2 x i32> %60, <i32 -1, i32 -1>
  %62 = icmp ult <2 x i32> %61, <i32 699, i32 499>
  %shift34.2 = shufflevector <2 x i1> %62, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %63 = and <2 x i1> %shift34.2, %62
  %64 = extractelement <2 x i1> %63, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %64, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.2 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %65 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.2, 1
  %.not.i.2 = icmp eq i8 %65, 0
  br i1 %.not.i.2, label %70, label %66

66:                                               ; preds = %58
  %67 = extractelement <2 x i32> %60, i64 0
  %68 = extractelement <2 x i32> %60, i64 1
  %69 = tail call i32 @simPutPixel(i32 %67, i32 %68, i32 %36)
  br label %70

70:                                               ; preds = %66, %58
  %71 = mul nsw <2 x i32> %31, <i32 3, i32 3>
  %72 = sdiv <2 x i32> %71, <i32 10, i32 10>
  %73 = add nsw <2 x i32> %72, %20
  %74 = add nsw <2 x i32> %73, <i32 -1, i32 -1>
  %75 = icmp ult <2 x i32> %74, <i32 699, i32 499>
  %shift34.3 = shufflevector <2 x i1> %75, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %76 = and <2 x i1> %shift34.3, %75
  %77 = extractelement <2 x i1> %76, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %77, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.3 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %78 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.3, 1
  %.not.i.3 = icmp eq i8 %78, 0
  br i1 %.not.i.3, label %83, label %79

79:                                               ; preds = %70
  %80 = extractelement <2 x i32> %73, i64 0
  %81 = extractelement <2 x i32> %73, i64 1
  %82 = tail call i32 @simPutPixel(i32 %80, i32 %81, i32 %36)
  br label %83

83:                                               ; preds = %79, %70
  %84 = shl nsw <2 x i32> %31, <i32 2, i32 2>
  %85 = sdiv <2 x i32> %84, <i32 10, i32 10>
  %86 = add nsw <2 x i32> %85, %20
  %87 = add nsw <2 x i32> %86, <i32 -1, i32 -1>
  %88 = icmp ult <2 x i32> %87, <i32 699, i32 499>
  %shift34.4 = shufflevector <2 x i1> %88, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %89 = and <2 x i1> %shift34.4, %88
  %90 = extractelement <2 x i1> %89, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %90, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.4 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %91 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.4, 1
  %.not.i.4 = icmp eq i8 %91, 0
  br i1 %.not.i.4, label %96, label %92

92:                                               ; preds = %83
  %93 = extractelement <2 x i32> %86, i64 0
  %94 = extractelement <2 x i32> %86, i64 1
  %95 = tail call i32 @simPutPixel(i32 %93, i32 %94, i32 %36)
  br label %96

96:                                               ; preds = %92, %83
  %97 = sdiv <2 x i32> %29, <i32 2000000, i32 2000000>
  %98 = add nsw <2 x i32> %97, %20
  %99 = add nsw <2 x i32> %98, <i32 -1, i32 -1>
  %100 = icmp ult <2 x i32> %99, <i32 699, i32 499>
  %shift34.5 = shufflevector <2 x i1> %100, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %101 = and <2 x i1> %shift34.5, %100
  %102 = extractelement <2 x i1> %101, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %102, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.5 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %103 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.5, 1
  %.not.i.5 = icmp eq i8 %103, 0
  br i1 %.not.i.5, label %108, label %104

104:                                              ; preds = %96
  %105 = extractelement <2 x i32> %98, i64 0
  %106 = extractelement <2 x i32> %98, i64 1
  %107 = tail call i32 @simPutPixel(i32 %105, i32 %106, i32 %36)
  br label %108

108:                                              ; preds = %104, %96
  %109 = mul nsw <2 x i32> %31, <i32 6, i32 6>
  %110 = sdiv <2 x i32> %109, <i32 10, i32 10>
  %111 = add nsw <2 x i32> %110, %20
  %112 = add nsw <2 x i32> %111, <i32 -1, i32 -1>
  %113 = icmp ult <2 x i32> %112, <i32 699, i32 499>
  %shift34.6 = shufflevector <2 x i1> %113, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %114 = and <2 x i1> %shift34.6, %113
  %115 = extractelement <2 x i1> %114, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %115, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.6 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %116 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.6, 1
  %.not.i.6 = icmp eq i8 %116, 0
  br i1 %.not.i.6, label %121, label %117

117:                                              ; preds = %108
  %118 = extractelement <2 x i32> %111, i64 0
  %119 = extractelement <2 x i32> %111, i64 1
  %120 = tail call i32 @simPutPixel(i32 %118, i32 %119, i32 %36)
  br label %121

121:                                              ; preds = %117, %108
  %122 = mul nsw <2 x i32> %31, <i32 7, i32 7>
  %123 = sdiv <2 x i32> %122, <i32 10, i32 10>
  %124 = add nsw <2 x i32> %123, %20
  %125 = add nsw <2 x i32> %124, <i32 -1, i32 -1>
  %126 = icmp ult <2 x i32> %125, <i32 699, i32 499>
  %shift34.7 = shufflevector <2 x i1> %126, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %127 = and <2 x i1> %shift34.7, %126
  %128 = extractelement <2 x i1> %127, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %128, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.7 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %129 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.7, 1
  %.not.i.7 = icmp eq i8 %129, 0
  br i1 %.not.i.7, label %134, label %130

130:                                              ; preds = %121
  %131 = extractelement <2 x i32> %124, i64 0
  %132 = extractelement <2 x i32> %124, i64 1
  %133 = tail call i32 @simPutPixel(i32 %131, i32 %132, i32 %36)
  br label %134

134:                                              ; preds = %130, %121
  %135 = shl nsw <2 x i32> %31, <i32 3, i32 3>
  %136 = sdiv <2 x i32> %135, <i32 10, i32 10>
  %137 = add nsw <2 x i32> %136, %20
  %138 = add nsw <2 x i32> %137, <i32 -1, i32 -1>
  %139 = icmp ult <2 x i32> %138, <i32 699, i32 499>
  %shift34.8 = shufflevector <2 x i1> %139, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %140 = and <2 x i1> %shift34.8, %139
  %141 = extractelement <2 x i1> %140, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %141, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.8 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %142 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.8, 1
  %.not.i.8 = icmp eq i8 %142, 0
  br i1 %.not.i.8, label %147, label %143

143:                                              ; preds = %134
  %144 = extractelement <2 x i32> %137, i64 0
  %145 = extractelement <2 x i32> %137, i64 1
  %146 = tail call i32 @simPutPixel(i32 %144, i32 %145, i32 %36)
  br label %147

147:                                              ; preds = %143, %134
  %148 = mul nsw <2 x i32> %31, <i32 9, i32 9>
  %149 = sdiv <2 x i32> %148, <i32 10, i32 10>
  %150 = add nsw <2 x i32> %149, %20
  %151 = add nsw <2 x i32> %150, <i32 -1, i32 -1>
  %152 = icmp ult <2 x i32> %151, <i32 699, i32 499>
  %shift34.9 = shufflevector <2 x i1> %152, <2 x i1> poison, <2 x i32> <i32 1, i32 undef>
  %153 = and <2 x i1> %shift34.9, %152
  %154 = extractelement <2 x i1> %153, i64 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  store i1 %154, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.9 = load i8, ptr %ans.sroa.0.sroa.0.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ans.sroa.0.sroa.0.i10.i)
  %155 = and i8 %ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.i.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.i10.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.sroa.0.0.ans.sroa.0.0..i11.i.9, 1
  %.not.i.9 = icmp eq i8 %155, 0
  br i1 %.not.i.9, label %drawLine.exit, label %156

156:                                              ; preds = %147
  %157 = extractelement <2 x i32> %150, i64 0
  %158 = extractelement <2 x i32> %150, i64 1
  %159 = tail call i32 @simPutPixel(i32 %157, i32 %158, i32 %36)
  br label %drawLine.exit

drawLine.exit:                                    ; preds = %156, %147
  %160 = tail call i32 @simFlush()
  %161 = add <2 x i32> %30, %19
  br label %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { noreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
