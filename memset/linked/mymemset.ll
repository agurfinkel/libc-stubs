; ModuleID = 'mymemset.c'
source_filename = "mymemset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mymemset(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %4, align 8
  br label %212

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %19, i8* %21, align 1
  %22 = load i32, i32* %6, align 4
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 %23, i8* %27, align 1
  %28 = load i64, i64* %7, align 8
  %29 = icmp ule i64 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %4, align 8
  br label %212

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %34, i8* %36, align 1
  %37 = load i32, i32* %6, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 2
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, 3
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i64, i64* %7, align 8
  %54 = icmp ule i64 %53, 6
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %4, align 8
  br label %212

57:                                               ; preds = %32
  %58 = load i32, i32* %6, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8 %59, i8* %61, align 1
  %62 = load i32, i32* %6, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, 4
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 %63, i8* %67, align 1
  %68 = load i64, i64* %7, align 8
  %69 = icmp ule i64 %68, 8
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i8*, i8** %5, align 8
  store i8* %71, i8** %4, align 8
  br label %212

72:                                               ; preds = %57
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = sub i64 0, %74
  %76 = and i64 %75, 3
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = and i64 %83, -4
  store i64 %84, i64* %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = trunc i32 %85 to i8
  %87 = zext i8 %86 to i32
  %88 = mul i32 16843009, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = bitcast i8* %91 to i32*
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 -4
  %98 = bitcast i8* %97 to i32*
  store i32 %93, i32* %98, align 4
  %99 = load i64, i64* %7, align 8
  %100 = icmp ule i64 %99, 8
  br i1 %100, label %101, label %103

101:                                              ; preds = %72
  %102 = load i8*, i8** %5, align 8
  store i8* %102, i8** %4, align 8
  br label %212

103:                                              ; preds = %72
  %104 = load i32, i32* %10, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = bitcast i8* %106 to i32*
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = bitcast i8* %110 to i32*
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = getelementptr inbounds i8, i8* %115, i64 -12
  %117 = bitcast i8* %116 to i32*
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 -8
  %123 = bitcast i8* %122 to i32*
  store i32 %118, i32* %123, align 4
  %124 = load i64, i64* %7, align 8
  %125 = icmp ule i64 %124, 24
  br i1 %125, label %126, label %128

126:                                              ; preds = %103
  %127 = load i8*, i8** %5, align 8
  store i8* %127, i8** %4, align 8
  br label %212

128:                                              ; preds = %103
  %129 = load i32, i32* %10, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 12
  %132 = bitcast i8* %131 to i32*
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 16
  %136 = bitcast i8* %135 to i32*
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 20
  %140 = bitcast i8* %139 to i32*
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 24
  %144 = bitcast i8* %143 to i32*
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = getelementptr inbounds i8, i8* %148, i64 -28
  %150 = bitcast i8* %149 to i32*
  store i32 %145, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i8*, i8** %8, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = getelementptr inbounds i8, i8* %154, i64 -24
  %156 = bitcast i8* %155 to i32*
  store i32 %151, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i8*, i8** %8, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = getelementptr inbounds i8, i8* %160, i64 -20
  %162 = bitcast i8* %161 to i32*
  store i32 %157, i32* %162, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i8*, i8** %8, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = getelementptr inbounds i8, i8* %166, i64 -16
  %168 = bitcast i8* %167 to i32*
  store i32 %163, i32* %168, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = and i64 %170, 4
  %172 = add i64 24, %171
  store i64 %172, i64* %9, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %8, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load i64, i64* %7, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %7, align 8
  %179 = load i32, i32* %10, align 4
  %180 = zext i32 %179 to i64
  %181 = load i32, i32* %10, align 4
  %182 = zext i32 %181 to i64
  %183 = shl i64 %182, 32
  %184 = or i64 %180, %183
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %205, %128
  %186 = load i64, i64* %7, align 8
  %187 = icmp uge i64 %186, 32
  br i1 %187, label %188, label %210

188:                                              ; preds = %185
  %189 = load i64, i64* %11, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = bitcast i8* %191 to i64*
  store i64 %189, i64* %192, align 8
  %193 = load i64, i64* %11, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 8
  %196 = bitcast i8* %195 to i64*
  store i64 %193, i64* %196, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 16
  %200 = bitcast i8* %199 to i64*
  store i64 %197, i64* %200, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i8*, i8** %8, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 24
  %204 = bitcast i8* %203 to i64*
  store i64 %201, i64* %204, align 8
  br label %205

205:                                              ; preds = %188
  %206 = load i64, i64* %7, align 8
  %207 = sub i64 %206, 32
  store i64 %207, i64* %7, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 32
  store i8* %209, i8** %8, align 8
  br label %185

210:                                              ; preds = %185
  %211 = load i8*, i8** %5, align 8
  store i8* %211, i8** %4, align 8
  br label %212

212:                                              ; preds = %210, %126, %101, %70, %55, %30, %15
  %213 = load i8*, i8** %4, align 8
  ret i8* %213
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1-++20200504072549+8e7ae355ba9-1~exp1~20200504053147.28 "}
