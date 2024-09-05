// These are some examples of the application of the code "Functions.m". There is one example in characteristic 5, one in characteristic 0, three in characteristic 2: one ordinary, one almost ordinary and one supersingular, and then the example over which we get everywhere good reduction

// We first load the file with the functions
load "Functions.m";

// Example in characteristic five
Q5 := GF(5);
PolQ5<x> := PolynomialRing(Q5);
f5 := 3*x^6+2*x+1;
g5 := 2*x^3;
C5 := HyperellipticCurve(f5,g5);
J5 := Jacobian(C5);
Kum5 := GeneralKummerSurface(J5);
Jac5 := GeneralJacobianSurface(J5);

// Example in characteristic zero
Q0<r> := ext<Rationals() | Polynomial([-1,-1,1])>;
PolQ0<x> := PolynomialRing(Q0);
f0 := -(20*r*x + 5*r^2*x - 20*x^2 - 39*r*x^2 - 7*r^2*x^2 + 34*x^3 + 24*r*x^3 + 2*r^2*x^3 - 17*x^4 - 6*r*x^4 + 4*x^5 + r*x^5);
g0 := -(r*x) + x^2 + r*x^2 + x^3;
C0 := HyperellipticCurve(f0,g0);
J0 := Jacobian(C0);
Kum0 := GeneralKummerSurface(J0);
Jac0 := GeneralJacobianSurface(J0);
Des0 := DesingularisedKummer(J0);
Ex0, Tr0, Des0 := Lines(J0, Des0);
W0 := WeddleSurface(J0);

// Example of an ordinary genus 2 curve in characteristic 2. This can be found by specialising the characteristic zero example
QO<r> := GF(4);
PolQO<x> := PolynomialRing(QO);
fO := r^2*x + r*x^2 + r^2*x^2 + x^4 + r*x^5;
gO := r*x + x^2 + r*x^2 + x^3;
CO := HyperellipticCurve(fO,gO);
JO := Jacobian(CO);
KumO := GeneralKummerSurface(JO);
JacO := GeneralJacobianSurface(JO);
DesO := DesingularisedKummer(JO);
ExO, TrO, DesO := Lines(JO, DesO);
WO := WeddleSurface(JO);
phiO := WeddleQuotient(JO, DesO, WO);
WsptsO := SingularPoints(WO);
Factorisation(gO);
[TjurinaP3(pt): pt in WsptsO];

// Example of an almost ordinary genus 2 curve in characteristic 2
QAO<r> := GF(2);
PolQAO<x> := PolynomialRing(QAO);
fAO := x^6+x^5+1;
gAO := x*(x-1)^2;
CAO := HyperellipticCurve(fAO,gAO);
JAO := Jacobian(CAO);
KumAO := GeneralKummerSurface(JAO);
JacAO := GeneralJacobianSurface(JAO);
DesAO := DesingularisedKummer(JAO);
ExAO, TrAO, plAO := Lines(JAO, DesAO);
WAO := WeddleSurface(JAO);
phiAO := WeddleQuotient(JAO, DesAO, WAO);
WsptsAO := SingularPoints(WAO);
[TjurinaP3(pt): pt in WsptsAO];

// Example of a supersingular genus 2 curve in characteristic 2
QSS<r> := GF(4);
PolQSS<x> := PolynomialRing(QSS);
fSS := x^6+x+1;
gSS := x^3;
CSS := HyperellipticCurve(fSS,gSS);
JSS := Jacobian(CSS);
KumSS := GeneralKummerSurface(JSS);
JacSS := GeneralJacobianSurface(JSS);
DesSS := DesingularisedKummer(JSS);
ExSS, TrSS, DesSS := Lines(JSS, DesSS);
WSS := WeddleSurface(JSS);

// The example whose associated Kummer have everywhere good reduction
PolQ<x> := PolynomialRing(Rationals());
QDK<w> := NumberField(x^2-x-88);
PolQDK<x> := PolynomialRing(QDK);
gDK := (w + 1)*x^3 + x^2 + w*x + w + 1;
fDK := -(15*w + 149)*x^6 - (1119*w + 9948)*x^5 - (36545*w + 325090)*x^4 -(636332*w + 5659370)*x^3 - (6227174*w + 55387985)*x^2 -(32480001*w + 288869715)*x - 70532813*w - 627353458;
CDK := HyperellipticCurve(fDK,gDK);
JDK := Jacobian(CDK);
KumDK := GeneralKummerSurface(JDK);
JacDK := GeneralJacobianSurface(JDK);
DesDK := DesingularisedKummer(JDK);

