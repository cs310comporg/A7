load BoothMultiplier.hdl,

set reset 1,
set initM %D-73,
set initQ %D81;

tick, tock,
set reset 0;


repeat 100 { 
  tick, tock;
}

set reset 1,
set initM %D10,
set initQ %D81;

tick, tock,
set reset 0;


repeat 100 { 
  tick, tock;
}

