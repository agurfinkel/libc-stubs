; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.p1 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memset_stub(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  call void @sea_dsa_collapse(i8* %8)
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i32, i32* %7, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %9

24:                                               ; preds = %9
  %25 = load i8*, i8** %4, align 8
  ret i8* %25
}

declare dso_local void @sea_dsa_collapse(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i32]* @__const.main.p1 to i8*), i64 16, i1 false)
  %5 = call i8* @malloc(i64 40)
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %8 = bitcast i32* %7 to i8*
  %9 = call i8* @memset_stub(i8* %8, i32 0, i64 16)
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = call i8* @memset_stub(i8* %11, i32 0, i64 40)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.1-++20200504072549+8e7ae355ba9-1~exp1~20200504053147.28 "}
!1 = !{i32 1, !"wchar_size", i32 4}
