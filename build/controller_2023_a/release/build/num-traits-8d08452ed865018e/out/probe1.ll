; ModuleID = 'probe1.e5c80b9f5a0efe0a-cgu.0'
source_filename = "probe1.e5c80b9f5a0efe0a-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; core::f64::<impl f64>::to_int_unchecked
; Function Attrs: inlinehint uwtable
define i32 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$16to_int_unchecked17hcfc4faab6a98f78aE"(double %self) unnamed_addr #0 {
start:
; call <f64 as core::convert::num::FloatToInt<i32>>::to_int_unchecked
  %_0 = call i32 @"_ZN65_$LT$f64$u20$as$u20$core..convert..num..FloatToInt$LT$i32$GT$$GT$16to_int_unchecked17hdbf95558280950bfE"(double %self)
  ret i32 %_0
}

; <f64 as core::convert::num::FloatToInt<i32>>::to_int_unchecked
; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN65_$LT$f64$u20$as$u20$core..convert..num..FloatToInt$LT$i32$GT$$GT$16to_int_unchecked17hdbf95558280950bfE"(double %self) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = fptosi double %self to i32
  store i32 %1, ptr %0, align 4
  %_0 = load i32, ptr %0, align 4, !noundef !2
  ret i32 %_0
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h2fc149f31f20cb85E() unnamed_addr #1 {
start:
; call core::f64::<impl f64>::to_int_unchecked
  %_1 = call i32 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$16to_int_unchecked17hcfc4faab6a98f78aE"(double 1.000000e+00)
  ret void
}

attributes #0 = { inlinehint uwtable "target-cpu"="generic" "target-features"="+v8a,+outline-atomics" }
attributes #1 = { uwtable "target-cpu"="generic" "target-features"="+v8a,+outline-atomics" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.75.0 (82e1608df 2023-12-21)"}
!2 = !{}
