// Mai Nou & Nathan Moder
load Larc.hdl,

set RAM16K[0]  %X8117,   // 1.  li  R1 23        R1 <-- 23                  
set RAM16K[1]  %X8212,   // 2.  li  R2 18        R2 <-- 18
set RAM16K[2]  %X84F6,   // 3.  li R4 -10        R4 <-- -10
set RAM16K[3]  %X2312,   // 4.  mult R3 R1 R2    R3 <-- 414
set RAM16K[4]  %X2514,   // 5.  mult R5 R1 R4    R4 <-- -230
set RAM16K[5]  %X0653,   // 6.  add R6 R5 R3     R6 <-- 184
set RAM16K[6]  %XF000    // 7. halt             
;

repeat 100 { 
  tick, tock;
}
