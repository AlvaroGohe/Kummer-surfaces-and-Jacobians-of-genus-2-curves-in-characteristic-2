// These are some examples of the application of the code "Functions.m". There is one example in characteristic 5, one supersingular, one almost ordinary and one ordinary in characteristic 2, and then the example over which

load "Functions.m";

Q5 := GF(5);
PolQ5<x> := PolynomialRing(Q5);
f5 := 3*x^6+2*x+1;
g5 := 2*x^3;
C5 := HyperellipticCurve(f5,g5);
J5 := Jacobian(C5);
Kum5 := GeneralKummerSurface(J5);
Jac5 := GeneralJacobianSurface(J5);
ptsJ5 := Points(J5);
ptsKum5 := [Kappa(Kum5,pt): pt in ptsJ5];
ptsJac5 := [Gamma(Jac5,pt): pt in ptsJ5];
P35<k1,k2,k3,k4> := Ambient(Kum5);
P155<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(Jac5);

QSS<r> := GF(4);
PolQSS<x> := PolynomialRing(QSS);
fSS := x^6+x+1;
gSS := x^3;
CSS := HyperellipticCurve(fSS,gSS);
JSS := Jacobian(CSS);
KumSS := GeneralKummerSurface(JSS);
JacSS := GeneralJacobianSurface(JSS);
ptsJSS := Points(JSS);
ptsKumSS := [Kappa(KumSS,pt): pt in ptsJSS];
ptsJacSS := [Gamma(JacSS,pt): pt in ptsJSS];
P3SS<k1,k2,k3,k4> := Ambient(KumSS);
P15SS<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(JacSS);

QAO<r> := GF(4);
PolQAO<x> := PolynomialRing(QAO);
fAO := x^6+x^5+r*x+1;
gAO := x^2*(x+1);
CAO := HyperellipticCurve(fAO,gAO);
JAO := Jacobian(CAO);
KumAO := GeneralKummerSurface(JAO);
JacAO := GeneralJacobianSurface(JAO);
ptsJAO := Points(JAO);
ptsKumAO := [Kappa(KumAO,pt): pt in ptsJAO];
ptsJacAO := [Gamma(JacAO,pt): pt in ptsJAO];
P3AO<k1,k2,k3,k4> := Ambient(KumAO);
P15AO<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(JacAO);

QO<r> := GF(4);
PolQO<x> := PolynomialRing(QO);
fO := r*x^6+x^5+1;
gO := x*(x+1)*(x+r);
CO := HyperellipticCurve(fO,gO);
JO := Jacobian(CO);
KumO := GeneralKummerSurface(JO);
JacO := GeneralJacobianSurface(JO);
ptsJO := Points(JO);
ptsKumO := [Kappa(KumO,pt): pt in ptsJO];
ptsJacO := [Gamma(JacO,pt): pt in ptsJO];
P3O<k1,k2,k3,k4> := Ambient(KumO);
P15O<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(JacO);

PolQ<x> := PolynomialRing(Rationals());
QDK<w> := NumberField(x^2-x-105);
PolQDK<x> := PolynomialRing(QDK);
fDK := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
gDK := w*(x^3+1);
CDK := HyperellipticCurve(fDK,gDK);
JDK := Jacobian(CDK);
KumDK := GeneralKummerSurface(JDK);
JacDK := GeneralJacobianSurface(JDK);
P3DK<k1,k2,k3,k4> := Ambient(KumDK);
P15DK<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(JacDK);


QDK2<w> := GF(4);
PolQDK2<x> := PolynomialRing(QDK2);
fDK2 := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
gDK2 := w*(x^3+1);
CDK2 := HyperellipticCurve(fDK2,gDK2);
JDK2 := Jacobian(CDK2);
KumDK2 := GeneralKummerSurface(JDK2);
JacDK2 := GeneralJacobianSurface(JDK2);
DD := DesingularisedKummer(JDK2);
P3DK2<k1,k2,k3,k4> := Ambient(KumDK2);
P15DK2<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(JacDK2);
 

