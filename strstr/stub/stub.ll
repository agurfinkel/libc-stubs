; ModuleID = 'stub.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.str1 = internal constant [10 x i8] c"abcdxyz\00\00\00", align 1
@main.str2 = internal constant [20 x i8] c"cdx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@main.str3 = internal constant [30 x i8] c"efghij\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [39 x i8] c"result(success): %s\0A result(fail): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i8* @strstr_stub(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @main.str1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @main.str2, i32 0, i32 0))
  store i8* %4, i8** %2, align 8
  %5 = call i8* @strstr_stub(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @main.str1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @main.str3, i32 0, i32 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* %6, i8* %7)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @strstr_stub(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  call void @sea_dsa_collapse(i8* %5)
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i8
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
