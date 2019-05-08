load Larc.hdl,

set RAM16K[0]  %X8117,   // 1.  li  R1 23         R1  <-- 23                  
set RAM16K[1]  %X8212,   // 2.  li  R2 18         R2  <-- 18
set RAM16K[2]  %X84F6,   // 3.  li R4 -10        R4 <-- -10
set RAM16K[3]  %X2312,   // 4.  mult R3 R1 R2    R3  <-- 414
set RAM16K[4]  %X6512,   // 6.  nor R5 R1 R2     R5  <-- -4   
set RAM16K[5]  %X2514,   // 5.  mult R5 R1 R4   R4  <-- -230   
set RAM16K[6]  %X7612,   // 7.  slt R6 R1 R2     R6  <-- 1
set RAM16K[7]  %X7621,   // 8.  slt R6 R2 R1     R6  <-- 0
set RAM16K[8]  %X7F22,   // 9.  slt R15 R2 R2    R15 <-- 0
set RAM16K[9]  %XF000    // 10. halt             
;

repeat 100 { 
  tick, tock;
}
