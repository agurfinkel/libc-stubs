; ModuleID = 'stub.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.s1 = internal constant [4 x i8] c"abc\00", align 1
@main.s2 = internal constant [4 x i8] c"123\00", align 1
@main.s3 = internal constant [7 x i8] c"edctyu\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"success: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"failure: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i8* @strpbrk_stub(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.s1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.s2, i32 0, i32 0))
  store i8* %4, i8** %2, align 8
  %5 = call i8* @strpbrk_stub(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @main.s1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @main.s3, i32 0, i32 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @strpbrk_stub(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  call void @sea_dsa_collapse(i8* %5)
  %6 = load i8*, i8** %4, align 8
  call void @sea_dsa_collapse(i8* %6)
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8
  br label %14

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %13, %11
  %15 = phi i8* [ %12, %11 ], [ null, %13 ]
  ret i8* %15
}

declare void @sea_dsa_collapse(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
