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


Q0<r> := ext<Rationals() | Polynomial([-1,-1,1])>;;
PolQ0<x> := PolynomialRing(Q0);
f0 := -(20*r*x + 5*r^2*x - 20*x^2 - 39*r*x^2 - 7*r^2*x^2 + 34*x^3 + 24*r*x^3 + 2*r^2*x^3 - 17*x^4 - 6*r*x^4 + 4*x^5 + r*x^5);
g0 := -(r*x) + x^2 + r*x^2 + x^3;
C0 := HyperellipticCurve(f0,g0);
J0 := Jacobian(C0);
Kum0 := GeneralKummerSurface(J0);
Jac0 := GeneralJacobianSurface(J0);
Des0 := DesingularisedKummer(J0);


QSS<r> := GF(4);
PolQSS<x> := PolynomialRing(QSS);
fSS := x^6+x+1;
gSS := x^3;
CSS := HyperellipticCurve(fSS,gSS);
JSS := Jacobian(CSS);
KumSS := GeneralKummerSurface(JSS);
JacSS := GeneralJacobianSurface(JSS);
DesSS := DesingularisedKummer(JSS);

QAO<r> := GF(8);
PolQAO<x> := PolynomialRing(QAO);
fAO := x^6+x^5+r*x+1;
gAO := (x+r)^2*(x+r^2);
CAO := HyperellipticCurve(fAO,gAO);
JAO := Jacobian(CAO);
KumAO := GeneralKummerSurface(JAO);
JacAO := GeneralJacobianSurface(JAO);
DesAO := DesingularisedKummer(JAO);


QO<r> := GF(4);
PolQO<x> := PolynomialRing(QO);
fO := r^2*x + r*x^2 + r^2*x^2 + x^4 + r*x^5;
gO := r*x + x^2 + r*x^2 + x^3;
CO := HyperellipticCurve(fO,gO);
JO := Jacobian(CO);
KumO := GeneralKummerSurface(JO);
JacO := GeneralJacobianSurface(JO);
DesO := DesingularisedKummer(JO);


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



QDK2<w> := GF(4);
PolQDK2<x> := PolynomialRing(QDK2);
fDK2 := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
gDK2 := w*(x^3+1);
CDK2 := HyperellipticCurve(fDK2,gDK2);
JDK2 := Jacobian(CDK2);
KumDK2 := GeneralKummerSurface(JDK2);
JacDK2 := GeneralJacobianSurface(JDK2);
DD := DesingularisedKummer(JDK2);

 

 