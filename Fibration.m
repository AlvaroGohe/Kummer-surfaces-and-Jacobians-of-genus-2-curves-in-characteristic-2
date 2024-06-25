load "Examples.m";
Ex0, Tr0, Des0 := LinesNotCharacteristic2(J0, Des0);
P<b1, b2, b3, b4, b5, b6> := Ambient(Des0);
H := Scheme(Des0, b5);
lines := Ex0 cat Tr0;
mat := Matrix([[-IntersectionNumber(Divisor(Des0,l1),Divisor(Des0,l1)): l1 in lines]: l2 in lines]);
lat := LatticeWithGram(mat);