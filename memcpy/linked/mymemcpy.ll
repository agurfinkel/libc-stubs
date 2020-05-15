; ModuleID = 'mymemcpy.c'
source_filename = "mymemcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mymemcpy(i8* noalias %0, i8* noalias %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i8*, i8** %9, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = urem i64 %16, 4
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  %27 = load i8, i8* %25, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  store i8 %27, i8* %28, align 1
  br label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %7, align 8
  br label %14

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = urem i64 %35, 4
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %142

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i64, i64* %7, align 8
  %41 = icmp uge i64 %40, 16
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = bitcast i8* %48 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = bitcast i8* %55 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  %63 = bitcast i8* %62 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 12
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 12
  %70 = bitcast i8* %69 to i32*
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %42
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 16
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 16
  store i8* %75, i8** %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %76, 16
  store i64 %77, i64* %7, align 8
  br label %39

78:                                               ; preds = %39
  %79 = load i64, i64* %7, align 8
  %80 = and i64 %79, 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = bitcast i8* %88 to i32*
  store i32 %86, i32* %89, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  store i8* %98, i8** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %82, %78
  %102 = load i64, i64* %7, align 8
  %103 = and i64 %102, 4
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = bitcast i8* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = bitcast i8* %111 to i32*
  store i32 %109, i32* %112, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  store i8* %116, i8** %9, align 8
  br label %117

117:                                              ; preds = %105, %101
  %118 = load i64, i64* %7, align 8
  %119 = and i64 %118, 2
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  %124 = load i8, i8* %122, align 1
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  store i8 %124, i8* %125, align 1
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %9, align 8
  %129 = load i8, i8* %127, align 1
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %8, align 8
  store i8 %129, i8* %130, align 1
  br label %132

132:                                              ; preds = %121, %117
  %133 = load i64, i64* %7, align 8
  %134 = and i64 %133, 1
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8*, i8** %9, align 8
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %8, align 8
  store i8 %138, i8* %139, align 1
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i8*, i8** %5, align 8
  store i8* %141, i8** %4, align 8
  br label %558

142:                                              ; preds = %33
  %143 = load i64, i64* %7, align 8
  %144 = icmp uge i64 %143, 32
  br i1 %144, label %145, label %378

145:                                              ; preds = %142
  %146 = load i8*, i8** %8, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = urem i64 %147, 4
  switch i64 %148, label %377 [
    i64 1, label %149
    i64 2, label %230
    i64 3, label %306
  ]

149:                                              ; preds = %145
  %150 = load i8*, i8** %9, align 8
  %151 = bitcast i8* %150 to i32*
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %10, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %9, align 8
  %155 = load i8, i8* %153, align 1
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %8, align 8
  store i8 %155, i8* %156, align 1
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %9, align 8
  %160 = load i8, i8* %158, align 1
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %8, align 8
  store i8 %160, i8* %161, align 1
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  %165 = load i8, i8* %163, align 1
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  store i8 %165, i8* %166, align 1
  %168 = load i64, i64* %7, align 8
  %169 = sub i64 %168, 3
  store i64 %169, i64* %7, align 8
  br label %170

170:                                              ; preds = %222, %149
  %171 = load i64, i64* %7, align 8
  %172 = icmp uge i64 %171, 17
  br i1 %172, label %173, label %229

173:                                              ; preds = %170
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = bitcast i8* %175 to i32*
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %10, align 4
  %179 = lshr i32 %178, 24
  %180 = load i32, i32* %11, align 4
  %181 = shl i32 %180, 8
  %182 = or i32 %179, %181
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = bitcast i8* %184 to i32*
  store i32 %182, i32* %185, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 5
  %188 = bitcast i8* %187 to i32*
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = lshr i32 %190, 24
  %192 = load i32, i32* %10, align 4
  %193 = shl i32 %192, 8
  %194 = or i32 %191, %193
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 4
  %197 = bitcast i8* %196 to i32*
  store i32 %194, i32* %197, align 4
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 9
  %200 = bitcast i8* %199 to i32*
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %10, align 4
  %203 = lshr i32 %202, 24
  %204 = load i32, i32* %11, align 4
  %205 = shl i32 %204, 8
  %206 = or i32 %203, %205
  %207 = load i8*, i8** %8, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 8
  %209 = bitcast i8* %208 to i32*
  store i32 %206, i32* %209, align 4
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 13
  %212 = bitcast i8* %211 to i32*
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = lshr i32 %214, 24
  %216 = load i32, i32* %10, align 4
  %217 = shl i32 %216, 8
  %218 = or i32 %215, %217
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 12
  %221 = bitcast i8* %220 to i32*
  store i32 %218, i32* %221, align 4
  br label %222

222:                                              ; preds = %173
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 16
  store i8* %224, i8** %9, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 16
  store i8* %226, i8** %8, align 8
  %227 = load i64, i64* %7, align 8
  %228 = sub i64 %227, 16
  store i64 %228, i64* %7, align 8
  br label %170

229:                                              ; preds = %170
  br label %377

230:                                              ; preds = %145
  %231 = load i8*, i8** %9, align 8
  %232 = bitcast i8* %231 to i32*
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %10, align 4
  %234 = load i8*, i8** %9, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %9, align 8
  %236 = load i8, i8* %234, align 1
  %237 = load i8*, i8** %8, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %8, align 8
  store i8 %236, i8* %237, align 1
  %239 = load i8*, i8** %9, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %9, align 8
  %241 = load i8, i8* %239, align 1
  %242 = load i8*, i8** %8, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %8, align 8
  store i8 %241, i8* %242, align 1
  %244 = load i64, i64* %7, align 8
  %245 = sub i64 %244, 2
  store i64 %245, i64* %7, align 8
  br label %246

246:                                              ; preds = %298, %230
  %247 = load i64, i64* %7, align 8
  %248 = icmp uge i64 %247, 18
  br i1 %248, label %249, label %305

249:                                              ; preds = %246
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 2
  %252 = bitcast i8* %251 to i32*
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %10, align 4
  %255 = lshr i32 %254, 16
  %256 = load i32, i32* %11, align 4
  %257 = shl i32 %256, 16
  %258 = or i32 %255, %257
  %259 = load i8*, i8** %8, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 0
  %261 = bitcast i8* %260 to i32*
  store i32 %258, i32* %261, align 4
  %262 = load i8*, i8** %9, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 6
  %264 = bitcast i8* %263 to i32*
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %11, align 4
  %267 = lshr i32 %266, 16
  %268 = load i32, i32* %10, align 4
  %269 = shl i32 %268, 16
  %270 = or i32 %267, %269
  %271 = load i8*, i8** %8, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 4
  %273 = bitcast i8* %272 to i32*
  store i32 %270, i32* %273, align 4
  %274 = load i8*, i8** %9, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 10
  %276 = bitcast i8* %275 to i32*
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %11, align 4
  %278 = load i32, i32* %10, align 4
  %279 = lshr i32 %278, 16
  %280 = load i32, i32* %11, align 4
  %281 = shl i32 %280, 16
  %282 = or i32 %279, %281
  %283 = load i8*, i8** %8, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 8
  %285 = bitcast i8* %284 to i32*
  store i32 %282, i32* %285, align 4
  %286 = load i8*, i8** %9, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 14
  %288 = bitcast i8* %287 to i32*
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %11, align 4
  %291 = lshr i32 %290, 16
  %292 = load i32, i32* %10, align 4
  %293 = shl i32 %292, 16
  %294 = or i32 %291, %293
  %295 = load i8*, i8** %8, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 12
  %297 = bitcast i8* %296 to i32*
  store i32 %294, i32* %297, align 4
  br label %298

298:                                              ; preds = %249
  %299 = load i8*, i8** %9, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 16
  store i8* %300, i8** %9, align 8
  %301 = load i8*, i8** %8, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 16
  store i8* %302, i8** %8, align 8
  %303 = load i64, i64* %7, align 8
  %304 = sub i64 %303, 16
  store i64 %304, i64* %7, align 8
  br label %246

305:                                              ; preds = %246
  br label %377

306:                                              ; preds = %145
  %307 = load i8*, i8** %9, align 8
  %308 = bitcast i8* %307 to i32*
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %10, align 4
  %310 = load i8*, i8** %9, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %9, align 8
  %312 = load i8, i8* %310, align 1
  %313 = load i8*, i8** %8, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %8, align 8
  store i8 %312, i8* %313, align 1
  %315 = load i64, i64* %7, align 8
  %316 = sub i64 %315, 1
  store i64 %316, i64* %7, align 8
  br label %317

317:                                              ; preds = %369, %306
  %318 = load i64, i64* %7, align 8
  %319 = icmp uge i64 %318, 19
  br i1 %319, label %320, label %376

320:                                              ; preds = %317
  %321 = load i8*, i8** %9, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 3
  %323 = bitcast i8* %322 to i32*
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %10, align 4
  %326 = lshr i32 %325, 8
  %327 = load i32, i32* %11, align 4
  %328 = shl i32 %327, 24
  %329 = or i32 %326, %328
  %330 = load i8*, i8** %8, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 0
  %332 = bitcast i8* %331 to i32*
  store i32 %329, i32* %332, align 4
  %333 = load i8*, i8** %9, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 7
  %335 = bitcast i8* %334 to i32*
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %10, align 4
  %337 = load i32, i32* %11, align 4
  %338 = lshr i32 %337, 8
  %339 = load i32, i32* %10, align 4
  %340 = shl i32 %339, 24
  %341 = or i32 %338, %340
  %342 = load i8*, i8** %8, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 4
  %344 = bitcast i8* %343 to i32*
  store i32 %341, i32* %344, align 4
  %345 = load i8*, i8** %9, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 11
  %347 = bitcast i8* %346 to i32*
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %11, align 4
  %349 = load i32, i32* %10, align 4
  %350 = lshr i32 %349, 8
  %351 = load i32, i32* %11, align 4
  %352 = shl i32 %351, 24
  %353 = or i32 %350, %352
  %354 = load i8*, i8** %8, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 8
  %356 = bitcast i8* %355 to i32*
  store i32 %353, i32* %356, align 4
  %357 = load i8*, i8** %9, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 15
  %359 = bitcast i8* %358 to i32*
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %10, align 4
  %361 = load i32, i32* %11, align 4
  %362 = lshr i32 %361, 8
  %363 = load i32, i32* %10, align 4
  %364 = shl i32 %363, 24
  %365 = or i32 %362, %364
  %366 = load i8*, i8** %8, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 12
  %368 = bitcast i8* %367 to i32*
  store i32 %365, i32* %368, align 4
  br label %369

369:                                              ; preds = %320
  %370 = load i8*, i8** %9, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 16
  store i8* %371, i8** %9, align 8
  %372 = load i8*, i8** %8, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 16
  store i8* %373, i8** %8, align 8
  %374 = load i64, i64* %7, align 8
  %375 = sub i64 %374, 16
  store i64 %375, i64* %7, align 8
  br label %317

376:                                              ; preds = %317
  br label %377

377:                                              ; preds = %145, %376, %305, %229
  br label %378

378:                                              ; preds = %377, %142
  %379 = load i64, i64* %7, align 8
  %380 = and i64 %379, 16
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %463

382:                                              ; preds = %378
  %383 = load i8*, i8** %9, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %384, i8** %9, align 8
  %385 = load i8, i8* %383, align 1
  %386 = load i8*, i8** %8, align 8
  %387 = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %387, i8** %8, align 8
  store i8 %385, i8* %386, align 1
  %388 = load i8*, i8** %9, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %9, align 8
  %390 = load i8, i8* %388, align 1
  %391 = load i8*, i8** %8, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %8, align 8
  store i8 %390, i8* %391, align 1
  %393 = load i8*, i8** %9, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %9, align 8
  %395 = load i8, i8* %393, align 1
  %396 = load i8*, i8** %8, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %8, align 8
  store i8 %395, i8* %396, align 1
  %398 = load i8*, i8** %9, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %9, align 8
  %400 = load i8, i8* %398, align 1
  %401 = load i8*, i8** %8, align 8
  %402 = getelementptr inbounds i8, i8* %401, i32 1
  store i8* %402, i8** %8, align 8
  store i8 %400, i8* %401, align 1
  %403 = load i8*, i8** %9, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %9, align 8
  %405 = load i8, i8* %403, align 1
  %406 = load i8*, i8** %8, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %8, align 8
  store i8 %405, i8* %406, align 1
  %408 = load i8*, i8** %9, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %9, align 8
  %410 = load i8, i8* %408, align 1
  %411 = load i8*, i8** %8, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %8, align 8
  store i8 %410, i8* %411, align 1
  %413 = load i8*, i8** %9, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %9, align 8
  %415 = load i8, i8* %413, align 1
  %416 = load i8*, i8** %8, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %8, align 8
  store i8 %415, i8* %416, align 1
  %418 = load i8*, i8** %9, align 8
  %419 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %419, i8** %9, align 8
  %420 = load i8, i8* %418, align 1
  %421 = load i8*, i8** %8, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %8, align 8
  store i8 %420, i8* %421, align 1
  %423 = load i8*, i8** %9, align 8
  %424 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %424, i8** %9, align 8
  %425 = load i8, i8* %423, align 1
  %426 = load i8*, i8** %8, align 8
  %427 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %427, i8** %8, align 8
  store i8 %425, i8* %426, align 1
  %428 = load i8*, i8** %9, align 8
  %429 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %429, i8** %9, align 8
  %430 = load i8, i8* %428, align 1
  %431 = load i8*, i8** %8, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %8, align 8
  store i8 %430, i8* %431, align 1
  %433 = load i8*, i8** %9, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %9, align 8
  %435 = load i8, i8* %433, align 1
  %436 = load i8*, i8** %8, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %437, i8** %8, align 8
  store i8 %435, i8* %436, align 1
  %438 = load i8*, i8** %9, align 8
  %439 = getelementptr inbounds i8, i8* %438, i32 1
  store i8* %439, i8** %9, align 8
  %440 = load i8, i8* %438, align 1
  %441 = load i8*, i8** %8, align 8
  %442 = getelementptr inbounds i8, i8* %441, i32 1
  store i8* %442, i8** %8, align 8
  store i8 %440, i8* %441, align 1
  %443 = load i8*, i8** %9, align 8
  %444 = getelementptr inbounds i8, i8* %443, i32 1
  store i8* %444, i8** %9, align 8
  %445 = load i8, i8* %443, align 1
  %446 = load i8*, i8** %8, align 8
  %447 = getelementptr inbounds i8, i8* %446, i32 1
  store i8* %447, i8** %8, align 8
  store i8 %445, i8* %446, align 1
  %448 = load i8*, i8** %9, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %9, align 8
  %450 = load i8, i8* %448, align 1
  %451 = load i8*, i8** %8, align 8
  %452 = getelementptr inbounds i8, i8* %451, i32 1
  store i8* %452, i8** %8, align 8
  store i8 %450, i8* %451, align 1
  %453 = load i8*, i8** %9, align 8
  %454 = getelementptr inbounds i8, i8* %453, i32 1
  store i8* %454, i8** %9, align 8
  %455 = load i8, i8* %453, align 1
  %456 = load i8*, i8** %8, align 8
  %457 = getelementptr inbounds i8, i8* %456, i32 1
  store i8* %457, i8** %8, align 8
  store i8 %455, i8* %456, align 1
  %458 = load i8*, i8** %9, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %459, i8** %9, align 8
  %460 = load i8, i8* %458, align 1
  %461 = load i8*, i8** %8, align 8
  %462 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %462, i8** %8, align 8
  store i8 %460, i8* %461, align 1
  br label %463

463:                                              ; preds = %382, %378
  %464 = load i64, i64* %7, align 8
  %465 = and i64 %464, 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %508

467:                                              ; preds = %463
  %468 = load i8*, i8** %9, align 8
  %469 = getelementptr inbounds i8, i8* %468, i32 1
  store i8* %469, i8** %9, align 8
  %470 = load i8, i8* %468, align 1
  %471 = load i8*, i8** %8, align 8
  %472 = getelementptr inbounds i8, i8* %471, i32 1
  store i8* %472, i8** %8, align 8
  store i8 %470, i8* %471, align 1
  %473 = load i8*, i8** %9, align 8
  %474 = getelementptr inbounds i8, i8* %473, i32 1
  store i8* %474, i8** %9, align 8
  %475 = load i8, i8* %473, align 1
  %476 = load i8*, i8** %8, align 8
  %477 = getelementptr inbounds i8, i8* %476, i32 1
  store i8* %477, i8** %8, align 8
  store i8 %475, i8* %476, align 1
  %478 = load i8*, i8** %9, align 8
  %479 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %479, i8** %9, align 8
  %480 = load i8, i8* %478, align 1
  %481 = load i8*, i8** %8, align 8
  %482 = getelementptr inbounds i8, i8* %481, i32 1
  store i8* %482, i8** %8, align 8
  store i8 %480, i8* %481, align 1
  %483 = load i8*, i8** %9, align 8
  %484 = getelementptr inbounds i8, i8* %483, i32 1
  store i8* %484, i8** %9, align 8
  %485 = load i8, i8* %483, align 1
  %486 = load i8*, i8** %8, align 8
  %487 = getelementptr inbounds i8, i8* %486, i32 1
  store i8* %487, i8** %8, align 8
  store i8 %485, i8* %486, align 1
  %488 = load i8*, i8** %9, align 8
  %489 = getelementptr inbounds i8, i8* %488, i32 1
  store i8* %489, i8** %9, align 8
  %490 = load i8, i8* %488, align 1
  %491 = load i8*, i8** %8, align 8
  %492 = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %492, i8** %8, align 8
  store i8 %490, i8* %491, align 1
  %493 = load i8*, i8** %9, align 8
  %494 = getelementptr inbounds i8, i8* %493, i32 1
  store i8* %494, i8** %9, align 8
  %495 = load i8, i8* %493, align 1
  %496 = load i8*, i8** %8, align 8
  %497 = getelementptr inbounds i8, i8* %496, i32 1
  store i8* %497, i8** %8, align 8
  store i8 %495, i8* %496, align 1
  %498 = load i8*, i8** %9, align 8
  %499 = getelementptr inbounds i8, i8* %498, i32 1
  store i8* %499, i8** %9, align 8
  %500 = load i8, i8* %498, align 1
  %501 = load i8*, i8** %8, align 8
  %502 = getelementptr inbounds i8, i8* %501, i32 1
  store i8* %502, i8** %8, align 8
  store i8 %500, i8* %501, align 1
  %503 = load i8*, i8** %9, align 8
  %504 = getelementptr inbounds i8, i8* %503, i32 1
  store i8* %504, i8** %9, align 8
  %505 = load i8, i8* %503, align 1
  %506 = load i8*, i8** %8, align 8
  %507 = getelementptr inbounds i8, i8* %506, i32 1
  store i8* %507, i8** %8, align 8
  store i8 %505, i8* %506, align 1
  br label %508

508:                                              ; preds = %467, %463
  %509 = load i64, i64* %7, align 8
  %510 = and i64 %509, 4
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %533

512:                                              ; preds = %508
  %513 = load i8*, i8** %9, align 8
  %514 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %514, i8** %9, align 8
  %515 = load i8, i8* %513, align 1
  %516 = load i8*, i8** %8, align 8
  %517 = getelementptr inbounds i8, i8* %516, i32 1
  store i8* %517, i8** %8, align 8
  store i8 %515, i8* %516, align 1
  %518 = load i8*, i8** %9, align 8
  %519 = getelementptr inbounds i8, i8* %518, i32 1
  store i8* %519, i8** %9, align 8
  %520 = load i8, i8* %518, align 1
  %521 = load i8*, i8** %8, align 8
  %522 = getelementptr inbounds i8, i8* %521, i32 1
  store i8* %522, i8** %8, align 8
  store i8 %520, i8* %521, align 1
  %523 = load i8*, i8** %9, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 1
  store i8* %524, i8** %9, align 8
  %525 = load i8, i8* %523, align 1
  %526 = load i8*, i8** %8, align 8
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** %8, align 8
  store i8 %525, i8* %526, align 1
  %528 = load i8*, i8** %9, align 8
  %529 = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %529, i8** %9, align 8
  %530 = load i8, i8* %528, align 1
  %531 = load i8*, i8** %8, align 8
  %532 = getelementptr inbounds i8, i8* %531, i32 1
  store i8* %532, i8** %8, align 8
  store i8 %530, i8* %531, align 1
  br label %533

533:                                              ; preds = %512, %508
  %534 = load i64, i64* %7, align 8
  %535 = and i64 %534, 2
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %548

537:                                              ; preds = %533
  %538 = load i8*, i8** %9, align 8
  %539 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %539, i8** %9, align 8
  %540 = load i8, i8* %538, align 1
  %541 = load i8*, i8** %8, align 8
  %542 = getelementptr inbounds i8, i8* %541, i32 1
  store i8* %542, i8** %8, align 8
  store i8 %540, i8* %541, align 1
  %543 = load i8*, i8** %9, align 8
  %544 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %544, i8** %9, align 8
  %545 = load i8, i8* %543, align 1
  %546 = load i8*, i8** %8, align 8
  %547 = getelementptr inbounds i8, i8* %546, i32 1
  store i8* %547, i8** %8, align 8
  store i8 %545, i8* %546, align 1
  br label %548

548:                                              ; preds = %537, %533
  %549 = load i64, i64* %7, align 8
  %550 = and i64 %549, 1
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %556

552:                                              ; preds = %548
  %553 = load i8*, i8** %9, align 8
  %554 = load i8, i8* %553, align 1
  %555 = load i8*, i8** %8, align 8
  store i8 %554, i8* %555, align 1
  br label %556

556:                                              ; preds = %552, %548
  %557 = load i8*, i8** %5, align 8
  store i8* %557, i8** %4, align 8
  br label %558

558:                                              ; preds = %556, %140
  %559 = load i8*, i8** %4, align 8
  ret i8* %559
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1-++20200504072549+8e7ae355ba9-1~exp1~20200504053147.28 "}
