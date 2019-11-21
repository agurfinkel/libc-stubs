; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.vowel = internal constant [6 x i8] c"aeiou\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"success: %s \0Afail: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @__mystrchrnul(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = trunc i32 %8 to i8
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* %15) #3
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %3, align 8
  br label %99

; <label>:18:                                     ; preds = %2
  br label %19

; <label>:19:                                     ; preds = %37, %18
  %20 = load i8*, i8** %4, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = urem i64 %21, 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %28, %24
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %3, align 8
  br label %99

; <label>:36:                                     ; preds = %28
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %19

; <label>:40:                                     ; preds = %19
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 72340172838076673, %42
  store i64 %43, i64* %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to i64*
  store i64* %45, i64** %6, align 8
  br label %46

; <label>:46:                                     ; preds = %74, %40
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, 72340172838076673
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %49, %52
  %54 = and i64 %53, -9187201950435737472
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %71, label %56

; <label>:56:                                     ; preds = %46
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = xor i64 %58, %59
  %61 = sub i64 %60, 72340172838076673
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = xor i64 %63, %64
  %66 = xor i64 %65, -1
  %67 = and i64 %61, %66
  %68 = and i64 %67, -9187201950435737472
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

; <label>:71:                                     ; preds = %56, %46
  %72 = phi i1 [ false, %46 ], [ %70, %56 ]
  br i1 %72, label %73, label %77

; <label>:73:                                     ; preds = %71
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i64*, i64** %6, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %6, align 8
  br label %46

; <label>:77:                                     ; preds = %71
  %78 = load i64*, i64** %6, align 8
  %79 = bitcast i64* %78 to i8*
  store i8* %79, i8** %4, align 8
  br label %80

; <label>:80:                                     ; preds = %94, %77
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %88, %89
  br label %91

; <label>:91:                                     ; preds = %85, %80
  %92 = phi i1 [ false, %80 ], [ %90, %85 ]
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %91
  br label %94

; <label>:94:                                     ; preds = %93
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  br label %80

; <label>:97:                                     ; preds = %91
  %98 = load i8*, i8** %4, align 8
  store i8* %98, i8** %3, align 8
  br label %99

; <label>:99:                                     ; preds = %97, %34, %13
  %100 = load i8*, i8** %3, align 8
  ret i8* %100
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @mystrchr(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i8* @__mystrchrnul(i8* %6, i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i8
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %5, align 8
  br label %19

; <label>:18:                                     ; preds = %2
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = phi i8* [ %17, %16 ], [ null, %18 ]
  ret i8* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8 105, i8* %2, align 1
  store i8 98, i8* %3, align 1
  %6 = call i8* @mystrchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @main.vowel, i32 0, i32 0), i32 105)
  store i8* %6, i8** %4, align 8
  %7 = call i8* @mystrchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @main.vowel, i32 0, i32 0), i32 98)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* %8, i8* %9)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
