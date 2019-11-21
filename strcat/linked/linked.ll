; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.str2 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @__mystpcpy(i8* noalias, i8* noalias) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = urem i64 %9, 8
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = urem i64 %12, 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %62

; <label>:15:                                     ; preds = %2
  br label %16

; <label>:16:                                     ; preds = %29, %15
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = urem i64 %18, 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = load i8*, i8** %4, align 8
  store i8 %23, i8* %24, align 1
  %25 = icmp ne i8 %23, 0
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %3, align 8
  br label %76

; <label>:28:                                     ; preds = %21
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %16

; <label>:34:                                     ; preds = %16
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i8* %35 to i64*
  store i64* %36, i64** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i64*
  store i64* %38, i64** %7, align 8
  br label %39

; <label>:39:                                     ; preds = %51, %34
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, 72340172838076673
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = xor i64 %44, -1
  %46 = and i64 %42, %45
  %47 = and i64 %46, -9187201950435737472
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %39
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i64*, i64** %7, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %7, align 8
  %54 = load i64, i64* %52, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %6, align 8
  store i64 %54, i64* %55, align 8
  br label %39

; <label>:57:                                     ; preds = %39
  %58 = load i64*, i64** %6, align 8
  %59 = bitcast i64* %58 to i8*
  store i8* %59, i8** %4, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = bitcast i64* %60 to i8*
  store i8* %61, i8** %5, align 8
  br label %62

; <label>:62:                                     ; preds = %57, %2
  br label %63

; <label>:63:                                     ; preds = %69, %62
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %4, align 8
  store i8 %65, i8* %66, align 1
  %67 = icmp ne i8 %65, 0
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %63
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  br label %63

; <label>:74:                                     ; preds = %63
  %75 = load i8*, i8** %4, align 8
  store i8* %75, i8** %3, align 8
  br label %76

; <label>:76:                                     ; preds = %74, %26
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @mystrcpy(i8* noalias, i8* noalias) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @__mystpcpy(i8* %5, i8* %6)
  %8 = load i8*, i8** %3, align 8
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @mystrlen(i8*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  br label %7

; <label>:7:                                      ; preds = %23, %1
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = urem i64 %9, 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %22, label %16

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %2, align 8
  br label %61

; <label>:22:                                     ; preds = %12
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %7

; <label>:26:                                     ; preds = %7
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %5, align 8
  br label %29

; <label>:29:                                     ; preds = %41, %26
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

; <label>:40:                                     ; preds = %29
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %5, align 8
  br label %29

; <label>:44:                                     ; preds = %29
  %45 = load i64*, i64** %5, align 8
  %46 = bitcast i64* %45 to i8*
  store i8* %46, i8** %3, align 8
  br label %47

; <label>:47:                                     ; preds = %52, %44
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %55

; <label>:51:                                     ; preds = %47
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  br label %47

; <label>:55:                                     ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %2, align 8
  br label %61

; <label>:61:                                     ; preds = %55, %16
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @mystrcat(i8* noalias, i8* noalias) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @mystrlen(i8* %6)
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @mystrcpy(i8* %8, i8* %9)
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i8], align 16
  %3 = alloca [4 x i8], align 1
  store i32 0, i32* %1, align 4
  %4 = bitcast [50 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 50, i32 16, i1 false)
  %5 = bitcast i8* %4 to [50 x i8]*
  %6 = getelementptr [50 x i8], [50 x i8]* %5, i32 0, i32 0
  store i8 97, i8* %6
  %7 = getelementptr [50 x i8], [50 x i8]* %5, i32 0, i32 1
  store i8 98, i8* %7
  %8 = getelementptr [50 x i8], [50 x i8]* %5, i32 0, i32 2
  store i8 99, i8* %8
  %9 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.str2, i32 0, i32 0), i64 4, i32 1, i1 false)
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i32 0, i32 0
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  %12 = call i8* @mystrcat(i8* %10, i8* %11)
  %13 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i32 0, i32 0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %13)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
