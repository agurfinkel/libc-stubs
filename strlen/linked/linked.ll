; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.str1 = private unnamed_addr constant [6 x i8] c"aeiou\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mystrlen(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = urem i64 %9, 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %2, align 8
  br label %61

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %7

26:                                               ; preds = %7
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %5, align 8
  br label %29

29:                                               ; preds = %41, %26
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, 72340172838076673
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %32, %35
  %37 = and i64 %36, -9187201950435737472
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %5, align 8
  br label %29

44:                                               ; preds = %29
  %45 = load i64*, i64** %5, align 8
  %46 = bitcast i64* %45 to i8*
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %52, %44
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  br label %47

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %55, %16
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = bitcast [6 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.str1, i32 0, i32 0), i64 6, i1 false)
  %4 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %5 = call i64 @mystrlen(i8* %4)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.1-++20200504072549+8e7ae355ba9-1~exp1~20200504053147.28 "}
!1 = !{i32 1, !"wchar_size", i32 4}
