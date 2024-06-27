
 load "Functions.m";
 
 PolQ<x> := PolynomialRing(Rationals());
 fD4 := -(-1 + 3*x - (4*x^2)/25 - (117*x^3)/25 + (32*x^4)/25 + (39*x^5)/25 + x^6/100);
 gD4 := x - x^2 - x^3;
 CD4 := HyperellipticCurve(fD4,gD4);
 JD4 := Jacobian(CD4);

 PolQ<x> := PolynomialRing(Rationals());
 Q2<w> := NumberField(x^2+12);
 PolQ2<x> := PolynomialRing(Q2);
 f3 := -1 + 7*x - 6*x^2 + 49*x^3 + 27*x^4 + 33*x^5 + 5*x^6;
 g3 := 2 - 6*x + 6*x^2 - 2*x^3;
 C3 := HyperellipticCurve(f3,g3);
 J3 := Jacobian(C3);
 Jac3 := GeneralJacobianSurface(J3);
 P15<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := AmbientSpace(Jac3);
 P5<w1,w2,w3,w4,w5,w6> := ProjectiveSpace(Q2,5);
 proj3 := map<Jac3 -> P5| [21*k11 + 91*k13 - 14*k23 + k24 + 33*k33 + 14*v2 + 2*v4, 6*k11 + 30*k12 - 4*k13 - 4*k22 - 18*k23 - 18*k33 + 4*v1 + 18*v2 + 18*v3, 36*k11 + 6*k12 + k13 - 12*k14 - k24 + k44, 
 -12*k11 - 19*k12 - 42*k13 + 2*k14 - 3*k23 + 3*k24 + 6*k34, k11 + 3*k12 + 15*k13 + 9*k23 + 9*k33, -4*k13 + k22]>;
 proj2 := map<Jac3 -> P5|[-6*k11 + 6*k12 - 2*k13 - 2*k22 + 2*v1, 2*k11 + 6*k13 - 2*k23 + 2*v2, 2*k12 - 6*k13 - 2*k33 + 2*v3, 7*k11 + 49*k13 + k24 + 33*k33 + 2*v4, 
 98*k11 - 14*k12 + 270*k13 - 6*k14 + 42*k22 - 126*k23 + 6*k24 - 72*k33 - 2*k34 + 2*v5, -576*k11 + 168*k12 - 3144*k13 + 8*k14 + 40*k22 - 120*k23 - 72*k24 - 3272*k33 + 
  24*k34 + 2*v6]>;


 PolQ<x> := PolynomialRing(Rationals());
 f3 := -1 + 7*x - 6*x^2 + 49*x^3 + 27*x^4 + 33*x^5 + 5*x^6;
 g3 := 2 - 6*x + 6*x^2 - 2*x^3;
 C3rat := HyperellipticCurve(f3,g3);
 J3rat := Jacobian(C3rat);
 Jac3rat := GeneralJacobianSurface(J3rat);
 P15<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := AmbientSpace(Jac3rat);
 P5<w1,w2,w3,w4,w5,w6> := ProjectiveSpace(Rationals(),5);
 proj3rat := map<Jac3rat -> P5| [21*k11 + 91*k13 - 14*k23 + k24 + 33*k33 + 14*v2 + 2*v4, 6*k11 + 30*k12 - 4*k13 - 4*k22 - 18*k23 - 18*k33 + 4*v1 + 18*v2 + 18*v3, 36*k11 + 6*k12 + k13 - 12*k14 - k24 + k44, 
 -12*k11 - 19*k12 - 42*k13 + 2*k14 - 3*k23 + 3*k24 + 6*k34, k11 + 3*k12 + 15*k13 + 9*k23 + 9*k33, -4*k13 + k22]>;


 PolQ<x> := PolynomialRing(Rationals());
 //Q2<w> := NumberField(x^2+x+1);
 Q2 := Rationals();
 PolQ2<x> := PolynomialRing(Q2);
 fc := 256 - 260*x^3 + 3*x^6;
 gc := 2*x^3;
 Cc := HyperellipticCurve(fc,gc);
 Jc := Jacobian(Cc);
 Jacc := GeneralJacobianSurface(Jc);
 P15<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := AmbientSpace(Jacc);
 P4<w1,w2,w3,w4,w5> := ProjectiveSpace(Q2,4);
 P5<q1,q2,q3,q4,q5,q6> := ProjectiveSpace(Q2,5);
 projc := map<Jacc-> P4| [k11,k23,k34, 2*(k23 + v2), 2*(k34 + v5)]>;
 Kc := projc(Jacc);
 projc2 := map<Jacc-> P5| [k13, k22, k24, k44, 2*(k22 + k13 + v1), -260*k13 + k24 + 2*v4]>;
 KC2 := projc2(Jacc);
 P45<w1,w2,w3,w4,w5,q1,q2,q3,q4,q5,q6> := ProductProjectiveSpace(Q2,[4,5]);
 projcomb := map<Jacc -> P45 | [k11,k23,k34, 2*(k23 + v2), 2*(k34 + v5),k13, k22, k24, k44, 2*(k22 + k13 + v1), -260*k13 + k24 + 2*v4]>;
 pts := Points(Jc: Bound := 300);
 tor3pts := pts[1..9];
 tor3jac := [Gamma(Jacc,pt): pt in tor3pts];
 C6 := Scheme(P45,[    -q3^2 + q2*q4,    -w4*q3 - 1/260*w5*q3 + 1/130*w4*q4 + w3*q5 - 2/65*w3*q6,    -w3*q3 + w2*q4,    q1*q2 - 256/4993*q2^2 - 21893/1298180*q1*q3 + 4481/1298180*q2*q3 - 1/79888*q3^2 + 1/19972*q1*q4 + 16/4993*q5^2 - 4481/2596360*q5*q6 + 1/19972*q6^2,    -w3*q2 + w2*q3,    q1^2 + 256/4993*q2^2 + 3457/649090*q1*q3 + 128/324545*q2*q3 + 1/79888*q3^2 - 1/19972*q1*q4 - 16/4993*q5^2 - 64/324545*q5*q6 - 1/19972*q6^2,    1/512*w5*q1 + 1/133120*w5*q3 - 1/66560*w4*q4 + w1*q5 + 1/16640*w3*q6,    -65/2*w4*q1 + 1/8*w5*q1 - 1/8*w4*q3 - 1/2080*w5*q3 + 1/1040*w4*q4 + w2*q6 - 1/260*w3*q6,    -w4*q1 + 1/260*w5*q1 - w4*q2 - 1/260*w5*q2 + 1/260*w4*q3 - 1/67600*w5*q3 + 1/33800*w4*q4 + w2*q5 - 1/8450*w3*q6,    2*w4*q1 - 1/260*w5*q1 + 1/260*w5*q2 - 1/260*w4*q3 + 1/67600*w5*q3 - 1/33800*w4*q4 + w1*q6 + 1/8450*w3*q6,    2646/102635*w3*q1 + 20996/4737*w2*q2 - 8962/307905*w3*q2 + w1*q3 - 1/18948*w3*q3 - 1/260*w1*q4 - 5249/18948*w4*q5 + 1/1040*w5*q5 + 65/9474*w4*q6 + 1/37896*w5*q6,    5928363/3415692800*w3*q1 + w1*q2 + 13699/307905*w2*q2 - 128/20013825*w3*q2 - 4609/630589440*w3*q3 - 1/67600*w1*q4 - 13699/4926480*w4*q5 + 1/270400*w5*q5 -         1/37896*w4*q6 + 4609/1261178880*w5*q6,    w2*q1 - 65/6316*w3*q1 - 512/4737*w2*q2 + 65/18948*w3*q2 + 1/75792*w3*q3 + 32/4737*w4*q5 - 65/37896*w4*q6 - 1/151584*w5*q6,    w1*q1 + 2774/6671275*w3*q1 - 1067/102635*w2*q2 - 1451/6671275*w3*q2 - 1/1642160*w3*q3 - 1/67600*w1*q4 + 1067/1642160*w4*q5 + 1/270400*w5*q5 + 1/12632*w4*q6 +         1/3284320*w5*q6,    w1^2 + 1/64*w2^2 + 1/256*w1*w3 - 1/1024*w4^2,    w1*w2^2 - 65/256*w2^3 - 4481/66560*w1*w2*w3 + 1/512*w2^2*w3 + 1/4096*w1*w3^2 - 1/266240*w2*w3^2 + 65/4096*w2*w4^2 - 1/8192*w3*w4^2 + 1/2129920*w3*w4*w5 -         1/4259840*w2*w5^2]);
 function ADE(p)
 _,f,_,fdat := IsHypersurfaceSingularity(p,3);
 R<a,b,c> := Parent(f);
 _,f0,typ := NormalFormOfHypersurfaceSingularity(f);
 return typ, f0;
 end function;

 PolQ<x> := PolynomialRing(Rationals());
 //Q2<w> := NumberField(x^2+x+1);
 Q2 := Rationals();
 PolQ2<x> := PolynomialRing(Q2);
 fk := 4 - x^2 + 5*x^3 + 3*x^4 - 2*x^6;
 gk := 2*x - 3*x^3;
 Ck := HyperellipticCurve(fk,gk);
 Jk := Jacobian(Ck);
 Jack := GeneralJacobianSurface(Jk);
 P15<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := AmbientSpace(Jack);
 P3<q1,q2,q3,q4> := ProjectiveSpace(Q2,3);
 P4<w1,w2,w3,w4,w5> := ProjectiveSpace(Q2,4);
 P5<q1,q2,q3,q4,q5,q6> := ProjectiveSpace(Q2,5);
 projk := map<Jack-> P5| [k13, k22, 3*k23 + k24, 9*k33 + 6*k34 + k44, k11 + v1, -v2 + v4]>;
 projkum := map<Jack-> P3| [k13, k22, 3*k23 + k24, 9*k33 + 6*k34 + k44]>;
 projkum2 := map<Jack-> P3| [k13^2, k22*k13, (3*k23 + k24)*k13, (9*k33 + 6*k34 + k44)*k13, k22^2, (3*k23 + k24)*k22, (9*k33 + 6*k34 + k44)*k22,]>;
 Kk := projk(Jack);


