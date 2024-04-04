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
DesSS := DesingularisedKummer(JSS);
ptsJSS := Points(JSS);
ptsKumSS := [Kappa(KumSS,pt): pt in ptsJSS];
ptsJacSS := [Gamma(JacSS,pt): pt in ptsJSS];
P3SS<k1,k2,k3,k4> := Ambient(KumSS);
P15SS<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(JacSS);

QAO<r> := GF(8);
PolQAO<x> := PolynomialRing(QAO);
fAO := x^6+x^5+r*x+1;
gAO := (x+r)^2*(x+r^2);
CAO := HyperellipticCurve(fAO,gAO);
JAO := Jacobian(CAO);
KumAO := GeneralKummerSurface(JAO);
JacAO := GeneralJacobianSurface(JAO);
DesAO := DesingularisedKummer(JAO);
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
DesO := DesingularisedKummer(JO);
ptsJO := Points(JO);
ptsKumO := [Kappa(KumO,pt): pt in ptsJO];
ptsJacO := [Gamma(JacO,pt): pt in ptsJO];
P3O<k1,k2,k3,k4> := Ambient(KumO);
P15O<v1, v2, v3, v4, v5, v6, k11, k12, k13, k14, k22, k23, k24, k33, k34, k44> := Ambient(JacO);

QO2<r> := GF(2);
PolQO2<x> := PolynomialRing(QO2);
fO2 := x^6+x^5+1;
gO2 := x*(x^2+x+1);
CO2 := HyperellipticCurve(fO2,gO2);
JO2 := Jacobian(CO2);
KumO2 := GeneralKummerSurface(JO2);
JacO2 := GeneralJacobianSurface(JO2);
DesO2 := DesingularisedKummer(JO2);

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
 


[a1^2*k13 + a1*k23 + k33, a1^2*k14 + k34 + k23*(a1^2*f5 + g3*y1) + k13*(a1*f3 + a1^3*f5 + a1*g3*y1 + a2*g3*y1 + a3*g3*y1) + a1*k11*(f1 + a2*a3*g3*y1),  a1*k24 + k23*(a1^2*f5 + g3*y1) + k13*(a1*f3 + a1^3*f5 + a1*g3*y1 + a2*g3*y1 + a3*g3*y1) + a1*k11*(f1 + a2*a3*g3*y1), a1^2*k11 + a1*k12 + k13,  a1*g3*k13 + a1*v1 + v2 + k11*(a1*a2*a3*g3 + y1), a1^3*v1 + a1*v3 + k13*(a1^3*g3 + a1^2*a2*g3 + a1^2*a3*g3 + y1) + a1^2*k11*(a1*a2*a3*g3 + y1),  a1*(a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*k14 + a1*(a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*(f5 + a1*f6)*k23 + (a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*v4 +   (a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*v1*y1 + k13*(a1^3*a2*f1 + a1^2*a2^2*f1 + a1^3*a3*f1 + a1*a2^2*a3*f1 + a1^2*a3^2*f1 + a1*a2*a3^2*f1 + a1^3*a2^3*f3 + a1^2*a2^4*f3 +     a1*a2^3*a3^2*f3 + a2^4*a3^2*f3 + a1^3*a3^3*f3 + a1*a2^2*a3^3*f3 + a1^2*a3^4*f3 + a2^2*a3^4*f3 + a1^6*a2^2*f5 + a1^3*a2^5*f5 + a1^6*a3^2*f5 + a1*a2^5*a3^2*f5 +     a1^3*a3^5*f5 + a1*a2^2*a3^5*f5 + a1^7*a2^2*f6 + a1^3*a2^6*f6 + a1^7*a3^2*f6 + a1*a2^6*a3^2*f6 + a1^3*a3^6*f6 + a1*a2^2*a3^6*f6 + a1^4*a2^2*g3*y1 + a1^2*a2^4*g3*y1 +     a1^4*a3^2*g3*y1 + a2^4*a3^2*g3*y1 + a1^2*a3^4*g3*y1 + a2^2*a3^4*g3*y1 + a1*a2^2*y1^2 + a1*a3^2*y1^2 + a1^3*y2^2 + a1*a3^2*y2^2 + a1^3*y3^2 + a1*a2^2*y3^2) +   k11*(a1^3*a2^2*a3*f1 + a1*a2^4*a3*f1 + a1^3*a2*a3^2*f1 + a2^4*a3^2*f1 + a1*a2*a3^4*f1 + a2^2*a3^4*f1 + a1^3*a2^3*a3^2*f3 + a1^2*a2^4*a3^2*f3 + a1^3*a2^2*a3^3*f3 +     a1*a2^4*a3^3*f3 + a1^2*a2^2*a3^4*f3 + a1*a2^3*a3^4*f3 + a1^4*a2^4*a3^2*f5 + a1^3*a2^5*a3^2*f5 + a1^4*a2^2*a3^4*f5 + a1*a2^5*a3^4*f5 + a1^3*a2^2*a3^5*f5 +     a1*a2^4*a3^5*f5 + a1^5*a2^4*a3^2*f6 + a1^3*a2^6*a3^2*f6 + a1^5*a2^2*a3^4*f6 + a1*a2^6*a3^4*f6 + a1^3*a2^2*a3^6*f6 + a1*a2^4*a3^6*f6 + a1^3*a2^2*y1^2 + a1*a2^4*y1^2 +    a1^3*a3^2*y1^2 + a1*a3^4*y1^2 + a1^3*a3^2*y2^2 + a1*a3^4*y2^2 + a1^3*a2^2*y3^2 + a1*a2^4*y3^2), a1^3*k11 + a1*k13 + a1*k22 + k23,  a1^2*(a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*g3^2*v5 + a1*(a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*v6 + a1*(a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*g3^2*k14*   (a1^3*g3 + a1^2*a2*g3 + a1^2*a3*g3 + a1*a2*a3*g3 + a2^2*a3*g3 + a2*a3^2*g3 + y1) + a1*(a1 + a2)^2*(a1 + a3)^2*(a2 + a3)^2*g3^2*v1*   (f1 + a1^2*f3 + a1^4*f5 + a1^5*g3^2 + a1^2*a2^2*a3*g3^2 + a1^2*a2*a3^2*g3^2 + a2^2*g3*y1 + a3^2*g3*y1) +   g3^3*k23*(a1^5*a2*f1 + a1^4*a2^2*f1 + a1^5*a3*f1 + a1*a2^4*a3*f1 + a1^4*a3^2*f1 + a2^4*a3^2*f1 + a1*a2*a3^4*f1 + a2^2*a3^4*f1 + a1^5*a2^3*f3 + a1^4*a2^4*f3 +     a1^5*a3^3*f3 + a1*a2^4*a3^3*f3 + a1^4*a3^4*f3 + a1*a2^3*a3^4*f3 + a1^8*a2^2*f5 + a1^6*a2^4*f5 + a1^5*a2^5*f5 + a1^4*a2^6*f5 + a1^8*a3^2*f5 + a1^2*a2^6*a3^2*f5 +     a1^6*a3^4*f5 + a1*a2^5*a3^4*f5 + a1^5*a3^5*f5 + a1*a2^4*a3^5*f5 + a1^4*a3^6*f5 + a1^2*a2^2*a3^6*f5 + a1^5*a2^4*a3^2*f6 + a1^3*a2^6*a3^2*f6 + a1^5*a2^2*a3^4*f6 +     a1*a2^6*a3^4*f6 + a1^3*a2^2*a3^6*f6 + a1*a2^4*a3^6*f6 + a1^4*a2^3*a3*g3*y1 + a1^2*a2^5*a3*g3*y1 + a1^4*a2*a3^3*g3*y1 + a2^5*a3^3*g3*y1 + a1^2*a2*a3^5*g3*y1 +     a2^3*a3^5*g3*y1 + a1*a2^4*y1^2 + a1*a3^4*y1^2 + a1^5*y2^2 + a1*a3^4*y2^2 + a1^5*y3^2 + a1*a2^4*y3^2) +   a1*g3^2*k13*(a1^5*a2*f1*g3 + a1^4*a2^2*f1*g3 + a1^3*a2^3*f1*g3 + a1*a2^5*f1*g3 + a1^5*a3*f1*g3 + a1^3*a2^2*a3*f1*g3 + a1*a2^4*a3*f1*g3 + a2^5*a3*f1*g3 + a1^4*a3^2*f1*g3 +     a1^3*a2*a3^2*f1*g3 + a1*a2^3*a3^2*f1*g3 + a2^4*a3^2*f1*g3 + a1^3*a3^3*f1*g3 + a1*a2^2*a3^3*f1*g3 + a1*a2*a3^4*f1*g3 + a2^2*a3^4*f1*g3 + a1*a3^5*f1*g3 + a2*a3^5*f1*g3 +     a1^5*a2^3*f3*g3 + a1^2*a2^6*f3*g3 + a1^4*a2^3*a3*f3*g3 + a1^3*a2^4*a3*f3*g3 + a1^3*a2^3*a3^2*f3*g3 + a1^2*a2^4*a3^2*f3*g3 + a1*a2^5*a3^2*f3*g3 + a2^6*a3^2*f3*g3 +     a1^5*a3^3*f3*g3 + a1^4*a2*a3^3*f3*g3 + a1^3*a2^2*a3^3*f3*g3 + a2^5*a3^3*f3*g3 + a1^3*a2*a3^4*f3*g3 + a1^2*a2^2*a3^4*f3*g3 + a1*a2^2*a3^5*f3*g3 + a2^3*a3^5*f3*g3 +     a1^2*a3^6*f3*g3 + a2^2*a3^6*f3*g3 + a1^7*a2^3*f5*g3 + a1^6*a2^4*f5*g3 + a1^5*a2^5*f5*g3 + a1^3*a2^7*f5*g3 + a1^7*a2^2*a3*f5*g3 + a1^5*a2^4*a3*f5*g3 +     a1^4*a2^5*a3*f5*g3 + a1^3*a2^6*a3*f5*g3 + a1^7*a2*a3^2*f5*g3 + a1^5*a2^3*a3^2*f5*g3 + a1^4*a2^4*a3^2*f5*g3 + a1^3*a2^5*a3^2*f5*g3 + a1^2*a2^6*a3^2*f5*g3 +     a1*a2^7*a3^2*f5*g3 + a1^7*a3^3*f5*g3 + a1^5*a2^2*a3^3*f5*g3 + a1^3*a2^4*a3^3*f5*g3 + a1*a2^6*a3^3*f5*g3 + a1^6*a3^4*f5*g3 + a1^5*a2*a3^4*f5*g3 + a1^4*a2^2*a3^4*f5*g3 +     a1^3*a2^3*a3^4*f5*g3 + a1*a2^5*a3^4*f5*g3 + a2^6*a3^4*f5*g3 + a1^5*a3^5*f5*g3 + a1^4*a2*a3^5*f5*g3 + a1^3*a2^2*a3^5*f5*g3 + a1*a2^4*a3^5*f5*g3 + a1^3*a2*a3^6*f5*g3 +     a1^2*a2^2*a3^6*f5*g3 + a1*a2^3*a3^6*f5*g3 + a2^4*a3^6*f5*g3 + a1^3*a3^7*f5*g3 + a1*a2^2*a3^7*f5*g3 + a1^6*a2^5*f6*g3 + a1^5*a2^6*f6*g3 + a1^4*a2^7*f6*g3 +     a1^3*a2^8*f6*g3 + a1^6*a2^4*a3*f6*g3 + a1^4*a2^6*a3*f6*g3 + a1^3*a2^6*a3^2*f6*g3 + a1*a2^8*a3^2*f6*g3 + a1^6*a2*a3^4*f6*g3 + a2^7*a3^4*f6*g3 + a1^6*a3^5*f6*g3 +     a2^6*a3^5*f6*g3 + a1^5*a3^6*f6*g3 + a1^4*a2*a3^6*f6*g3 + a1^3*a2^2*a3^6*f6*g3 + a2^5*a3^6*f6*g3 + a1^4*a3^7*f6*g3 + a2^4*a3^7*f6*g3 + a1^3*a3^8*f6*g3 +     a1*a2^2*a3^8*f6*g3 + a1^9*a2^2*g3^3 + a1^7*a2^4*g3^3 + a1^7*a2^3*a3*g3^3 + a1^6*a2^4*a3*g3^3 + a1^5*a2^5*a3*g3^3 + a1^4*a2^6*a3*g3^3 + a1^9*a3^2*g3^3 +     a1^6*a2^3*a3^2*g3^3 + a1^4*a2^5*a3^2*g3^3 + a1^3*a2^6*a3^2*g3^3 + a1^7*a2*a3^3*g3^3 + a1^6*a2^2*a3^3*g3^3 + a1^3*a2^5*a3^3*g3^3 + a1^2*a2^6*a3^3*g3^3 + a1^7*a3^4*g3^3 +     a1^6*a2*a3^4*g3^3 + a1^2*a2^5*a3^4*g3^3 + a1*a2^6*a3^4*g3^3 + a1^5*a2*a3^5*g3^3 + a1^4*a2^2*a3^5*g3^3 + a1^3*a2^3*a3^5*g3^3 + a1^2*a2^4*a3^5*g3^3 + a1^4*a2*a3^6*g3^3 +     a1^3*a2^2*a3^6*g3^3 + a1^2*a2^3*a3^6*g3^3 + a1*a2^4*a3^6*g3^3 + a1^5*a2^2*f5*y1 + a1^3*a2^4*f5*y1 + a1^5*a3^2*f5*y1 + a1*a2^4*a3^2*f5*y1 + a1^3*a3^4*f5*y1 +     a1*a2^2*a3^4*f5*y1 + a1^6*a2^2*g3^2*y1 + a1^5*a2^3*g3^2*y1 + a1^3*a2^5*g3^2*y1 + a1^2*a2^6*g3^2*y1 + a1^5*a2^2*a3*g3^2*y1 + a1^3*a2^4*a3*g3^2*y1 + a1^6*a3^2*g3^2*y1 +     a1^5*a2*a3^2*g3^2*y1 + a1*a2^5*a3^2*g3^2*y1 + a2^6*a3^2*g3^2*y1 + a1^5*a3^3*g3^2*y1 + a1*a2^4*a3^3*g3^2*y1 + a1^3*a2*a3^4*g3^2*y1 + a1*a2^3*a3^4*g3^2*y1 +     a1^3*a3^5*g3^2*y1 + a1*a2^2*a3^5*g3^2*y1 + a1^2*a3^6*g3^2*y1 + a2^2*a3^6*g3^2*y1 + a2^5*g3*y1^2 + a2^4*a3*g3*y1^2 + a2*a3^4*g3*y1^2 + a3^5*g3*y1^2 + a1^5*g3*y2^2 +     a1^4*a2*g3*y2^2 + a1^3*a2^2*g3*y2^2 + a1^4*a3*g3*y2^2 + a1^3*a3^2*g3*y2^2 + a1*a2^2*a3^2*g3*y2^2 + a2*a3^4*g3*y2^2 + a3^5*g3*y2^2 + a1^5*g3*y3^2 + a1^4*a2*g3*y3^2 +     a1^3*a2^2*g3*y3^2 + a2^5*g3*y3^2 + a1^4*a3*g3*y3^2 + a2^4*a3*g3*y3^2 + a1^3*a3^2*g3*y3^2 + a1*a2^2*a3^2*g3*y3^2) +   a1*g3^2*k11*(a1^5*a2^3*f1*g3 + a1^4*a2^4*f1*g3 + a1^3*a2^5*f1*g3 + a1^2*a2^6*f1*g3 + a1^4*a2^3*a3*f1*g3 + a1*a2^6*a3*f1*g3 + a1^3*a2^3*a3^2*f1*g3 + a1^2*a2^4*a3^2*f1*g3 +     a1^5*a3^3*f1*g3 + a1^4*a2*a3^3*f1*g3 + a1^3*a2^2*a3^3*f1*g3 + a2^5*a3^3*f1*g3 + a1^4*a3^4*f1*g3 + a1^2*a2^2*a3^4*f1*g3 + a1^3*a3^5*f1*g3 + a2^3*a3^5*f1*g3 +     a1^2*a3^6*f1*g3 + a1*a2*a3^6*f1*g3 + a1^4*a2^5*a3*f3*g3 + a1^3*a2^6*a3*f3*g3 + a1^5*a2^3*a3^2*f3*g3 + a1^2*a2^6*a3^2*f3*g3 + a1^5*a2^2*a3^3*f3*g3 +     a1^3*a2^4*a3^3*f3*g3 + a1^3*a2^3*a3^4*f3*g3 + a1*a2^5*a3^4*f3*g3 + a1^4*a2*a3^5*f3*g3 + a1*a2^4*a3^5*f3*g3 + a1^3*a2*a3^6*f3*g3 + a1^2*a2^2*a3^6*f3*g3 +     a1^8*a2^3*a3*f5*g3 + a1^7*a2^4*a3*f5*g3 + a1^7*a2^3*a3^2*f5*g3 + a1^5*a2^5*a3^2*f5*g3 + a1^4*a2^6*a3^2*f5*g3 + a1^3*a2^7*a3^2*f5*g3 + a1^8*a2*a3^3*f5*g3 +     a1^7*a2^2*a3^3*f5*g3 + a1^4*a2^5*a3^3*f5*g3 + a1^3*a2^6*a3^3*f5*g3 + a1^7*a2*a3^4*f5*g3 + a1*a2^7*a3^4*f5*g3 + a1^5*a2^2*a3^5*f5*g3 + a1^4*a2^3*a3^5*f5*g3 +     a1^4*a2^2*a3^6*f5*g3 + a1^3*a2^3*a3^6*f5*g3 + a1^3*a2^2*a3^7*f5*g3 + a1*a2^4*a3^7*f5*g3 + a1^7*a2^5*a3*f6*g3 + a1^5*a2^7*a3*f6*g3 + a1^5*a2^6*a3^2*f6*g3 +     a1^3*a2^8*a3^2*f6*g3 + a1^3*a2^6*a3^4*f6*g3 + a1*a2^8*a3^4*f6*g3 + a1^7*a2*a3^5*f6*g3 + a1*a2^7*a3^5*f6*g3 + a1^5*a2^2*a3^6*f6*g3 + a1^3*a2^4*a3^6*f6*g3 +     a1^5*a2*a3^7*f6*g3 + a1*a2^5*a3^7*f6*g3 + a1^3*a2^2*a3^8*f6*g3 + a1*a2^4*a3^8*f6*g3 + a1^7*a2^4*a3^2*g3^3 + a1^6*a2^5*a3^2*g3^3 + a1^5*a2^6*a3^2*g3^3 +     a1^4*a2^7*a3^2*g3^3 + a1^6*a2^4*a3^3*g3^3 + a1^4*a2^6*a3^3*g3^3 + a1^7*a2^2*a3^4*g3^3 + a1^6*a2^3*a3^4*g3^3 + a1^3*a2^6*a3^4*g3^3 + a1^2*a2^7*a3^4*g3^3 +     a1^6*a2^2*a3^5*g3^3 + a1^2*a2^6*a3^5*g3^3 + a1^5*a2^2*a3^6*g3^3 + a1^4*a2^3*a3^6*g3^3 + a1^3*a2^4*a3^6*g3^3 + a1^2*a2^5*a3^6*g3^3 + a1^4*a2^2*a3^7*g3^3 +     a1^2*a2^4*a3^7*g3^3 + a1^5*a2^2*f3*y1 + a1^3*a2^4*f3*y1 + a1^5*a3^2*f3*y1 + a1*a2^4*a3^2*f3*y1 + a1^3*a3^4*f3*y1 + a1*a2^2*a3^4*f3*y1 + a1^7*a2^2*f5*y1 +     a1^5*a2^4*f5*y1 + a1^7*a3^2*f5*y1 + a1^3*a2^4*a3^2*f5*y1 + a1^5*a3^4*f5*y1 + a1^3*a2^2*a3^4*f5*y1 + a1^8*a2^2*g3^2*y1 + a1^6*a2^4*g3^2*y1 + a1^6*a2^3*a3*g3^2*y1 +     a1^5*a2^4*a3*g3^2*y1 + a1^4*a2^5*a3*g3^2*y1 + a1^3*a2^6*a3*g3^2*y1 + a1^8*a3^2*g3^2*y1 + a1^5*a2^3*a3^2*g3^2*y1 + a1^4*a2^4*a3^2*g3^2*y1 + a1^3*a2^5*a3^2*g3^2*y1 +     a1^6*a2*a3^3*g3^2*y1 + a1^5*a2^2*a3^3*g3^2*y1 + a1^2*a2^5*a3^3*g3^2*y1 + a1*a2^6*a3^3*g3^2*y1 + a1^6*a3^4*g3^2*y1 + a1^5*a2*a3^4*g3^2*y1 + a1^4*a2^2*a3^4*g3^2*y1 +     a1*a2^5*a3^4*g3^2*y1 + a1^4*a2*a3^5*g3^2*y1 + a1^3*a2^2*a3^5*g3^2*y1 + a1^2*a2^3*a3^5*g3^2*y1 + a1*a2^4*a3^5*g3^2*y1 + a1^3*a2*a3^6*g3^2*y1 + a1*a2^3*a3^6*g3^2*y1 +     a1^3*a2^4*g3*y1^2 + a1*a2^6*g3*y1^2 + a1*a2^5*a3*g3*y1^2 + a1*a2^4*a3^2*g3*y1^2 + a1^3*a3^4*g3*y1^2 + a1*a2^2*a3^4*g3*y1^2 + a1*a2*a3^5*g3*y1^2 + a1*a3^6*g3*y1^2 +     a1^5*a2*a3*g3*y2^2 + a1^3*a2^2*a3^2*g3*y2^2 + a1^3*a3^4*g3*y2^2 + a1*a2^2*a3^4*g3*y2^2 + a1*a2*a3^5*g3*y2^2 + a1*a3^6*g3*y2^2 + a1^3*a2^4*g3*y3^2 + a1*a2^6*g3*y3^2 +     a1^5*a2*a3*g3*y3^2 + a1*a2^5*a3*g3*y3^2 + a1^3*a2^2*a3^2*g3*y3^2 + a1*a2^4*a3^2*g3*y3^2)]
[a1^4*k11 + a1^2*k22 + k33, a1^3*k11 + a1*k13 + a1*k22 + k23, f3*k13 + k24 + k22*(a1^2*f5 + g3*y1) + k11*(f1 + a1^4*f5 + a1^2*g3*y1 + a2^2*g3*y1), a1^2*k11 + a1*k12 + k13,  a1*g3*k13 + a1*v1 + v2 + k11*(a1*a2^2*g3 + y1), a1^3*v1 + a1*v3 + k13*(a1^3*g3 + y1) + a1^2*k11*(a1*a2^2*g3 + y1),  (a1 + a2)^2*k34 + a1*(a1 + a2)^2*v4 + a1*(a1 + a2)^2*v1*y1 + a1*(a1 + a2)^2*k22*(a1^3*f6 + g3*y1) + a1*(a1 + a2)^2*k13*(a1*f4 + a1^2*f5 + a1^3*f6 + g3*y1) +   a1*k11*(a1^2*f1 + a1*a2*f1 + a1^2*a2^2*f3 + a1*a2^3*f3 + a1^3*a2^2*f4 + a1*a2^4*f4 + a1^4*a2^2*f5 + a1*a2^5*f5 + a1^7*f6 + a1*a2^6*f6 + a1^4*g3*y1 + a2^4*g3*y1 + a1*y1^2 +     a1*y2^2), a1*f3*k13 + a1^2*k14 + k34 + a1*k22*(a1^2*f5 + g3*y1) + a1*k11*(f1 + a1^4*f5 + a1^2*g3*y1 + a2^2*g3*y1),  a1^2*(a1 + a2)^2*g3^2*(f1 + a1^2*f3 + a1^4*f5 + a1^5*g3^2)*v1 + a1^3*(a1 + a2)^2*g3^2*v5 + a1^2*(a1 + a2)^2*v6 + (a1 + a2)^2*g3^2*k34*(a1^3*g3 + a1*a2^2*g3 + y1) +   a1*(a1 + a2)^2*g3^2*k13*(a1*f1*g3 + a1^3*f3*g3 + a1*a2^2*f3*g3 + a1^5*f5*g3 + a1^6*g3^3 + a1^4*a2^2*g3^3 + a1^2*a2^4*g3^3 + f3*y1 + a1^2*f5*y1 + a1^3*g3^2*y1 +     a1*a2^2*g3^2*y1) + a1*g3^2*k22*(a1^2*a2*f1*g3 + a1*a2^2*f1*g3 + a1^5*f3*g3 + a1^2*a2^3*f3*g3 + a1^6*f4*g3 + a1^2*a2^4*f4*g3 + a1^7*f5*g3 + a1^5*a2^2*f5*g3 +     a1^3*a2^4*f5*g3 + a1^2*a2^5*f5*g3 + a1^8*f6*g3 + a1^2*a2^6*f6*g3 + a1^4*f5*y1 + a1^2*a2^2*f5*y1 + a1^5*g3^2*y1 + a1^3*a2^2*g3^2*y1 + a2^2*g3*y1^2 + a1^2*g3*y2^2) +   a1*(a1 + a2)^2*g3^2*k11*(a1^3*f1*g3 + a1^2*a2*f1*g3 + a1^5*f3*g3 + a1^2*a2^3*f3*g3 + a1^6*f4*g3 + a1^2*a2^4*f4*g3 + a1^7*f5*g3 + a1^2*a2^5*f5*g3 + a1^8*f6*g3 +     a1^2*a2^6*f6*g3 + a1^4*a2^4*g3^3 + f1*y1 + a1^2*f3*y1 + a1*a2^4*g3^2*y1 + a2^2*g3*y1^2 + a1^2*g3*y2^2)]