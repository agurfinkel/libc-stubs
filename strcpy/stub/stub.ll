; ModuleID = 'stub.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.str1 = private unnamed_addr constant [6 x i8] c"aeiou\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"abcd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i8], align 1
  %3 = alloca [10 x i8], align 1
  %4 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  %5 = bitcast [6 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @main.str1, i32 0, i32 0), i64 6, i32 1, i1 false)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 0
  %8 = call i8* @strcpy_stub(i8* %6, i8* %7)
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0
  %10 = call i8* @strcpy_stub(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @strcpy_stub(i8* noalias, i8* noalias) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  ret i8* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
