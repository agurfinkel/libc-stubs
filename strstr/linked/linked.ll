; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.str1 = internal constant [10 x i8] c"abcdxyz\00\00\00", align 1
@main.str2 = internal constant [20 x i8] c"cdx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@main.str3 = internal constant [30 x i8] c"efghij\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [39 x i8] c"result(success): %s\0A result(fail): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @mystrstr(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %3, align 8
  br label %76

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i8* @strchr(i8* %13, i32 %16) #4
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %20, %12
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %3, align 8
  br label %76

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %27
  store i8* null, i8** %3, align 8
  br label %76

; <label>:33:                                     ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @twobyte_strstr(i8* %39, i8* %40)
  store i8* %41, i8** %3, align 8
  br label %76

; <label>:42:                                     ; preds = %33
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

; <label>:47:                                     ; preds = %42
  store i8* null, i8** %3, align 8
  br label %76

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @threebyte_strstr(i8* %54, i8* %55)
  store i8* %56, i8** %3, align 8
  br label %76

; <label>:57:                                     ; preds = %48
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %63, label %62

; <label>:62:                                     ; preds = %57
  store i8* null, i8** %3, align 8
  br label %76

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %72, label %68

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i8* @fourbyte_strstr(i8* %69, i8* %70)
  store i8* %71, i8** %3, align 8
  br label %76

; <label>:72:                                     ; preds = %63
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @twoway_strstr(i8* %73, i8* %74)
  store i8* %75, i8** %3, align 8
  br label %76

; <label>:76:                                     ; preds = %72, %68, %62, %53, %47, %38, %32, %25, %10
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @twobyte_strstr(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %11, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %22, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %6, align 2
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  br label %31

; <label>:31:                                     ; preds = %45, %2
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %31
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ne i32 %38, %40
  br label %42

; <label>:42:                                     ; preds = %36, %31
  %43 = phi i1 [ false, %31 ], [ %41, %36 ]
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %42
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i16, i16* %6, align 2
  %47 = zext i16 %46 to i32
  %48 = shl i32 %47, 8
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %48, %52
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %6, align 2
  br label %31

; <label>:55:                                     ; preds = %42
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  br label %64

; <label>:63:                                     ; preds = %55
  br label %64

; <label>:64:                                     ; preds = %63, %60
  %65 = phi i8* [ %62, %60 ], [ null, %63 ]
  ret i8* %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threebyte_strstr(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 24
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 16
  %17 = or i32 %11, %16
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  store i32 %23, i32* %5, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 24
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %28, %33
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = or i32 %34, %39
  store i32 %40, i32* %6, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %3, align 8
  br label %43

; <label>:43:                                     ; preds = %55, %2
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br label %52

; <label>:52:                                     ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %54, label %63

; <label>:54:                                     ; preds = %52
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %56, %60
  %62 = shl i32 %61, 8
  store i32 %62, i32* %6, align 4
  br label %43

; <label>:63:                                     ; preds = %52
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -2
  br label %72

; <label>:71:                                     ; preds = %63
  br label %72

; <label>:72:                                     ; preds = %71, %68
  %73 = phi i8* [ %70, %68 ], [ null, %71 ]
  ret i8* %73
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fourbyte_strstr(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 24
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 16
  %17 = or i32 %11, %16
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %23, %27
  store i32 %28, i32* %5, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 24
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 16
  %39 = or i32 %33, %38
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = or i32 %39, %44
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %45, %49
  store i32 %50, i32* %6, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  store i8* %52, i8** %3, align 8
  br label %53

; <label>:53:                                     ; preds = %65, %2
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %59, %60
  br label %62

; <label>:62:                                     ; preds = %58, %53
  %63 = phi i1 [ false, %53 ], [ %61, %58 ]
  br i1 %63, label %64, label %73

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 8
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %67, %71
  store i32 %72, i32* %6, align 4
  br label %53

; <label>:73:                                     ; preds = %62
  %74 = load i8*, i8** %3, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -3
  br label %82

; <label>:81:                                     ; preds = %73
  br label %82

; <label>:82:                                     ; preds = %81, %78
  %83 = phi i8* [ %80, %78 ], [ null, %81 ]
  ret i8* %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @twoway_strstr(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4 x i64], align 16
  %17 = alloca [256 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = bitcast [4 x i64]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 32, i32 16, i1 false)
  store i64 0, i64* %7, align 8
  br label %21

; <label>:21:                                     ; preds = %62, %2
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br label %35

; <label>:35:                                     ; preds = %28, %21
  %36 = phi i1 [ false, %21 ], [ %34, %28 ]
  br i1 %36, label %37, label %65

; <label>:37:                                     ; preds = %35
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = urem i64 %42, 64
  %44 = shl i64 1, %43
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = udiv i64 %49, 64
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = or i64 %52, %44
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i64], [256 x i64]* %17, i64 0, i64 %60
  store i64 %55, i64* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %37
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %21

; <label>:65:                                     ; preds = %35
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %65
  store i8* null, i8** %3, align 8
  br label %409

; <label>:72:                                     ; preds = %65
  store i64 -1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 1, i64* %11, align 8
  store i64 1, i64* %10, align 8
  br label %73

; <label>:73:                                     ; preds = %134, %72
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %74, %75
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %135

; <label>:79:                                     ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %81, %82
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %88, %89
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %86, %93
  br i1 %94, label %95, label %107

; <label>:95:                                     ; preds = %79
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

; <label>:99:                                     ; preds = %95
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %9, align 8
  store i64 1, i64* %10, align 8
  br label %106

; <label>:103:                                    ; preds = %95
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %106

; <label>:106:                                    ; preds = %103, %99
  br label %134

; <label>:107:                                    ; preds = %79
  %108 = load i8*, i8** %5, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %109, %110
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8*, i8** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %116, %117
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sgt i32 %114, %121
  br i1 %122, label %123, label %130

; <label>:123:                                    ; preds = %107
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %8, align 8
  %129 = sub i64 %127, %128
  store i64 %129, i64* %11, align 8
  br label %133

; <label>:130:                                    ; preds = %107
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %9, align 8
  store i64 %131, i64* %8, align 8
  store i64 1, i64* %11, align 8
  store i64 1, i64* %10, align 8
  br label %133

; <label>:133:                                    ; preds = %130, %123
  br label %134

; <label>:134:                                    ; preds = %133, %106
  br label %73

; <label>:135:                                    ; preds = %73
  %136 = load i64, i64* %8, align 8
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %11, align 8
  store i64 %137, i64* %13, align 8
  store i64 -1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 1, i64* %11, align 8
  store i64 1, i64* %10, align 8
  br label %138

; <label>:138:                                    ; preds = %199, %135
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %139, %140
  %142 = load i64, i64* %7, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %200

; <label>:144:                                    ; preds = %138
  %145 = load i8*, i8** %5, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = add i64 %146, %147
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8*, i8** %5, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %153, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %151, %158
  br i1 %159, label %160, label %172

; <label>:160:                                    ; preds = %144
  %161 = load i64, i64* %10, align 8
  %162 = load i64, i64* %11, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

; <label>:164:                                    ; preds = %160
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %9, align 8
  store i64 1, i64* %10, align 8
  br label %171

; <label>:168:                                    ; preds = %160
  %169 = load i64, i64* %10, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %10, align 8
  br label %171

; <label>:171:                                    ; preds = %168, %164
  br label %199

; <label>:172:                                    ; preds = %144
  %173 = load i8*, i8** %5, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %10, align 8
  %176 = add i64 %174, %175
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8*, i8** %5, align 8
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %181, %182
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp slt i32 %179, %186
  br i1 %187, label %188, label %195

; <label>:188:                                    ; preds = %172
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* %9, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* %8, align 8
  %194 = sub i64 %192, %193
  store i64 %194, i64* %11, align 8
  br label %198

; <label>:195:                                    ; preds = %172
  %196 = load i64, i64* %9, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %9, align 8
  store i64 %196, i64* %8, align 8
  store i64 1, i64* %11, align 8
  store i64 1, i64* %10, align 8
  br label %198

; <label>:198:                                    ; preds = %195, %188
  br label %199

; <label>:199:                                    ; preds = %198, %171
  br label %138

; <label>:200:                                    ; preds = %138
  %201 = load i64, i64* %8, align 8
  %202 = add i64 %201, 1
  %203 = load i64, i64* %12, align 8
  %204 = add i64 %203, 1
  %205 = icmp ugt i64 %202, %204
  br i1 %205, label %206, label %208

; <label>:206:                                    ; preds = %200
  %207 = load i64, i64* %8, align 8
  store i64 %207, i64* %12, align 8
  br label %210

; <label>:208:                                    ; preds = %200
  %209 = load i64, i64* %13, align 8
  store i64 %209, i64* %11, align 8
  br label %210

; <label>:210:                                    ; preds = %208, %206
  %211 = load i8*, i8** %5, align 8
  %212 = load i8*, i8** %5, align 8
  %213 = load i64, i64* %11, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, 1
  %217 = call i32 @memcmp(i8* %211, i8* %214, i64 %216) #4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %236

; <label>:219:                                    ; preds = %210
  store i64 0, i64* %15, align 8
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* %7, align 8
  %222 = load i64, i64* %12, align 8
  %223 = sub i64 %221, %222
  %224 = sub i64 %223, 1
  %225 = icmp ugt i64 %220, %224
  br i1 %225, label %226, label %228

; <label>:226:                                    ; preds = %219
  %227 = load i64, i64* %12, align 8
  br label %233

; <label>:228:                                    ; preds = %219
  %229 = load i64, i64* %7, align 8
  %230 = load i64, i64* %12, align 8
  %231 = sub i64 %229, %230
  %232 = sub i64 %231, 1
  br label %233

; <label>:233:                                    ; preds = %228, %226
  %234 = phi i64 [ %227, %226 ], [ %232, %228 ]
  %235 = add i64 %234, 1
  store i64 %235, i64* %11, align 8
  br label %240

; <label>:236:                                    ; preds = %210
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* %11, align 8
  %239 = sub i64 %237, %238
  store i64 %239, i64* %15, align 8
  br label %240

; <label>:240:                                    ; preds = %236, %233
  store i64 0, i64* %14, align 8
  %241 = load i8*, i8** %4, align 8
  store i8* %241, i8** %6, align 8
  br label %242

; <label>:242:                                    ; preds = %404, %365, %318, %313, %240
  %243 = load i8*, i8** %6, align 8
  %244 = load i8*, i8** %4, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  %248 = load i64, i64* %7, align 8
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %250, label %274

; <label>:250:                                    ; preds = %242
  %251 = load i64, i64* %7, align 8
  %252 = or i64 %251, 63
  store i64 %252, i64* %18, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = load i64, i64* %18, align 8
  %255 = call i8* @memchr(i8* %253, i32 0, i64 %254) #4
  store i8* %255, i8** %19, align 8
  %256 = load i8*, i8** %19, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %269

; <label>:258:                                    ; preds = %250
  %259 = load i8*, i8** %19, align 8
  store i8* %259, i8** %6, align 8
  %260 = load i8*, i8** %6, align 8
  %261 = load i8*, i8** %4, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = load i64, i64* %7, align 8
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %267, label %268

; <label>:267:                                    ; preds = %258
  store i8* null, i8** %3, align 8
  br label %409

; <label>:268:                                    ; preds = %258
  br label %273

; <label>:269:                                    ; preds = %250
  %270 = load i64, i64* %18, align 8
  %271 = load i8*, i8** %6, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 %270
  store i8* %272, i8** %6, align 8
  br label %273

; <label>:273:                                    ; preds = %269, %268
  br label %274

; <label>:274:                                    ; preds = %273, %242
  %275 = load i8*, i8** %4, align 8
  %276 = load i64, i64* %7, align 8
  %277 = sub i64 %276, 1
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i64
  %281 = udiv i64 %280, 64
  %282 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = load i64, i64* %7, align 8
  %286 = sub i64 %285, 1
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i64
  %290 = urem i64 %289, 64
  %291 = shl i64 1, %290
  %292 = and i64 %283, %291
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %318

; <label>:294:                                    ; preds = %274
  %295 = load i64, i64* %7, align 8
  %296 = load i8*, i8** %4, align 8
  %297 = load i64, i64* %7, align 8
  %298 = sub i64 %297, 1
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i64
  %302 = getelementptr inbounds [256 x i64], [256 x i64]* %17, i64 0, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = sub i64 %295, %303
  store i64 %304, i64* %10, align 8
  %305 = load i64, i64* %10, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %317

; <label>:307:                                    ; preds = %294
  %308 = load i64, i64* %10, align 8
  %309 = load i64, i64* %14, align 8
  %310 = icmp ult i64 %308, %309
  br i1 %310, label %311, label %313

; <label>:311:                                    ; preds = %307
  %312 = load i64, i64* %14, align 8
  store i64 %312, i64* %10, align 8
  br label %313

; <label>:313:                                    ; preds = %311, %307
  %314 = load i64, i64* %10, align 8
  %315 = load i8*, i8** %4, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 %314
  store i8* %316, i8** %4, align 8
  store i64 0, i64* %14, align 8
  br label %242

; <label>:317:                                    ; preds = %294
  br label %322

; <label>:318:                                    ; preds = %274
  %319 = load i64, i64* %7, align 8
  %320 = load i8*, i8** %4, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 %319
  store i8* %321, i8** %4, align 8
  store i64 0, i64* %14, align 8
  br label %242

; <label>:322:                                    ; preds = %317
  %323 = load i64, i64* %12, align 8
  %324 = add i64 %323, 1
  %325 = load i64, i64* %14, align 8
  %326 = icmp ugt i64 %324, %325
  br i1 %326, label %327, label %330

; <label>:327:                                    ; preds = %322
  %328 = load i64, i64* %12, align 8
  %329 = add i64 %328, 1
  br label %332

; <label>:330:                                    ; preds = %322
  %331 = load i64, i64* %14, align 8
  br label %332

; <label>:332:                                    ; preds = %330, %327
  %333 = phi i64 [ %329, %327 ], [ %331, %330 ]
  store i64 %333, i64* %10, align 8
  br label %334

; <label>:334:                                    ; preds = %356, %332
  %335 = load i8*, i8** %5, align 8
  %336 = load i64, i64* %10, align 8
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %353

; <label>:341:                                    ; preds = %334
  %342 = load i8*, i8** %5, align 8
  %343 = load i64, i64* %10, align 8
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = load i8*, i8** %4, align 8
  %348 = load i64, i64* %10, align 8
  %349 = getelementptr inbounds i8, i8* %347, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  %352 = icmp eq i32 %346, %351
  br label %353

; <label>:353:                                    ; preds = %341, %334
  %354 = phi i1 [ false, %334 ], [ %352, %341 ]
  br i1 %354, label %355, label %359

; <label>:355:                                    ; preds = %353
  br label %356

; <label>:356:                                    ; preds = %355
  %357 = load i64, i64* %10, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %10, align 8
  br label %334

; <label>:359:                                    ; preds = %353
  %360 = load i8*, i8** %5, align 8
  %361 = load i64, i64* %10, align 8
  %362 = getelementptr inbounds i8, i8* %360, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = icmp ne i8 %363, 0
  br i1 %364, label %365, label %371

; <label>:365:                                    ; preds = %359
  %366 = load i64, i64* %10, align 8
  %367 = load i64, i64* %12, align 8
  %368 = sub i64 %366, %367
  %369 = load i8*, i8** %4, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 %368
  store i8* %370, i8** %4, align 8
  store i64 0, i64* %14, align 8
  br label %242

; <label>:371:                                    ; preds = %359
  %372 = load i64, i64* %12, align 8
  %373 = add i64 %372, 1
  store i64 %373, i64* %10, align 8
  br label %374

; <label>:374:                                    ; preds = %395, %371
  %375 = load i64, i64* %10, align 8
  %376 = load i64, i64* %14, align 8
  %377 = icmp ugt i64 %375, %376
  br i1 %377, label %378, label %392

; <label>:378:                                    ; preds = %374
  %379 = load i8*, i8** %5, align 8
  %380 = load i64, i64* %10, align 8
  %381 = sub i64 %380, 1
  %382 = getelementptr inbounds i8, i8* %379, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = load i8*, i8** %4, align 8
  %386 = load i64, i64* %10, align 8
  %387 = sub i64 %386, 1
  %388 = getelementptr inbounds i8, i8* %385, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = icmp eq i32 %384, %390
  br label %392

; <label>:392:                                    ; preds = %378, %374
  %393 = phi i1 [ false, %374 ], [ %391, %378 ]
  br i1 %393, label %394, label %398

; <label>:394:                                    ; preds = %392
  br label %395

; <label>:395:                                    ; preds = %394
  %396 = load i64, i64* %10, align 8
  %397 = add i64 %396, -1
  store i64 %397, i64* %10, align 8
  br label %374

; <label>:398:                                    ; preds = %392
  %399 = load i64, i64* %10, align 8
  %400 = load i64, i64* %14, align 8
  %401 = icmp ule i64 %399, %400
  br i1 %401, label %402, label %404

; <label>:402:                                    ; preds = %398
  %403 = load i8*, i8** %4, align 8
  store i8* %403, i8** %3, align 8
  br label %409

; <label>:404:                                    ; preds = %398
  %405 = load i64, i64* %11, align 8
  %406 = load i8*, i8** %4, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 %405
  store i8* %407, i8** %4, align 8
  %408 = load i64, i64* %15, align 8
  store i64 %408, i64* %14, align 8
  br label %242

; <label>:409:                                    ; preds = %402, %267, %71
  %410 = load i8*, i8** %3, align 8
  ret i8* %410
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i8* @mystrstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @main.str1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @main.str2, i32 0, i32 0))
  store i8* %4, i8** %2, align 8
  %5 = call i8* @mystrstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @main.str1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @main.str3, i32 0, i32 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* %6, i8* %7)
  ret i32 0
}

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
