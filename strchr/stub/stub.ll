; ModuleID = 'stub.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.vowel = internal constant [6 x i8] c"aeiou\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"success: %s \0Afail: %s\0A\00", align 1

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
  %6 = call i8* @strchr_stub(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @main.vowel, i32 0, i32 0), i32 105)
  store i8* %6, i8** %4, align 8
  %7 = call i8* @strchr_stub(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @main.vowel, i32 0, i32 0), i32 98)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* %8, i8* %9)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @strchr_stub(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  call void @sea_dsa_collapse(i8* %5)
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %3, align 8
  br label %16

; <label>:15:                                     ; preds = %2
  br label %16

; <label>:16:                                     ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ null, %15 ]
  ret i8* %17
}

declare void @sea_dsa_collapse(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
