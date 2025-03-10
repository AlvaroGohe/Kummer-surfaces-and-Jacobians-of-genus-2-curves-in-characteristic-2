// These are some examples of application of the code "Functions.m". There is one example in characteristic 5, one in characteristic 0, three in characteristic 2: one ordinary, one almost ordinary and one supersingular, and then the example over which we get everywhere good reduction.
// This code supports the material of Sections 5, 6 and 7
// The varieties that in the paper we called X, we have called it here Kum, and what we called Y, we have named here Des
// If you find any bug or mistake, or if you have any question, please don't hesitate in contacting me :)
// email: alvaro.gohe@gmail.com

// We first load the file with the functions
load "Functions.m";

// Example in characteristic five
Q5 := GF(5);
PolQ5<x> := PolynomialRing(Q5);
f5 := 3*x^6+2*x+1;
g5 := 2*x^3;
C5 := HyperellipticCurve(f5,g5);
J5 := Jacobian(C5); // This is the Magma implementation of the Jacobian of a curve of genus 2
PtsJ5 := Points(J5);
#PtsJ5; // We can check that it has 31 pts over F5
Kum5 := GeneralKummerSurface(J5); // The projective model of the Kummer surface
PtsK5 := Points(Kum5); 
#PtsK5; // The Kummer surface has 31 points
[Kappa(Kum5, pt): pt in PtsJ5]; // The points in the Kummer corresponding to the Jacobian
Jac5 := GeneralJacobianSurface(J5); // The projective model of the Jacobian as 72 equations in P^15
PtsJac5 := Points(Jac5);
#PtsJac5; // The number of points is 31, and this matches what we got using the Jacobian implemented in MAGMA
[Gamma(Jac5, pt): pt in PtsJ5]; // The points in the projective embedding coming from the Jacobian
[InverseGamma(J5, pt): pt in PtsJac5]; // The points in the Jacobian coming from the projective embedding
[Kum5!CoordinatesProjectionToKummer(pt): pt in PtsJac5]; // The projection of the points from the projective embedding of the Jacobian into the Kummer
[<pt,LiftKummerToJacobian(Jac5,pt)>: pt in PtsK5];  // The lift of the points in the Kummer to the points in the projective embedding of the Jacobian which are defined over the field of definition
[Addition(J5,pt,PtsJac5[2]): pt in PtsJac5]; // The result of adding the point (1 : 0 : 0 : 1 : 0 : 3 : 0 : 0 : 0 : 0 : 1 : 0 : 1 : 0 : 0 : 1) to all the points in the Jacobian
[MultiplicationByn(J5,pt,2): pt in PtsJac5]; // The result of multiplying all the points in the Jacobian by 2


// Example in characteristic zero
Q0<r> := ext<Rationals() | Polynomial([-1,-1,1])>;
PolQ0<x> := PolynomialRing(Q0);
f0 := -(20*r*x + 5*r^2*x - 20*x^2 - 39*r*x^2 - 7*r^2*x^2 + 34*x^3 + 24*r*x^3 + 2*r^2*x^3 - 17*x^4 - 6*r*x^4 + 4*x^5 + r*x^5);
g0 := -(r*x) + x^2 + r*x^2 + x^3;
C0 := HyperellipticCurve(f0,g0);
J0 := Jacobian(C0);
Kum0 := GeneralKummerSurface(J0);
Roots0 := Roots(f0+g0^2/4);
SptsK0 := SingularPoints(Kum0); 
#SptsK0; // There are 16 singular points defined over the field of definition
[ADEtype(pt): pt in SptsK0]; // They are all A1 singularities
Jac0 := GeneralJacobianSurface(J0);
Des0 := DesingularisedKummer(J0);
IsSingular(Des0);
Ex0, Tr0, Des0 := Lines(J0, Des0); // The lines on the surface
W0 := WeddleSurface(J0); // The Weddle surface associated to the curve
SptsW0 := SingularPoints(W0); 
#SptsW0; // There are 6 singular points defined over the field of definition
[ADEtype(pt): pt in SptsW0]; // They are all A1 singularities
pi0 := WeddleQuotient(Des0, W0); // The quotient from Des0
[IrreducibleComponents(pi0(l)): l in Ex0]; // The images of the exceoptional lines in the Weddle (which are all lines)
[IrreducibleComponents(pi0(l)): l in Tr0]; // The images of the tropes in the Weddle (the first 6 correspond to the singular points, the other are lines)
B0 := BlowupEO(Des0); // The blow-up of the line EO



// Example of an ordinary genus 2 curve in characteristic 2. This can be found by specialising the characteristic zero example
QO<r> := GF(4);
PolQO<x> := PolynomialRing(QO);
fO := r^2*x + r*x^2 + r^2*x^2 + x^4 + r*x^5;
gO := r*x + x^2 + r*x^2 + x^3;
CO := HyperellipticCurve(fO,gO);
JO := Jacobian(CO);
KumO := GeneralKummerSurface(JO);
RootsO := Factorisation(gO);
SptsKO := SingularPoints(KumO); 
#SptsKO; // There are 4 singular points defined over the field of definition
[TjurinaP3(pt): pt in SptsKO]; // They are all D4^1 singularities, as their Tjurina number is 6
JacO := GeneralJacobianSurface(JO);
DesO := DesingularisedKummer(JO);
SptsDesO := SingularPoints(DesO); 
#SptsDesO; // There are 12 singular points over the field of definition
[TjurinaP5(pt): pt in SptsDesO]; // They are all A1 singularities
ExO, TrO, DesO, plO := Lines(JO, DesO); // plO is the plane going through all the singular points
WO := WeddleSurface(JO);
piO := WeddleQuotient(DesO, WO);
SptsWO := SingularPoints(WO);
#SptsWO; // There are 6 singular points defined over the field of definition
[TjurinaP3(pt): pt in SptsWO]; // Three of them are A3 singularities and 4 are A1 singularities
QO := SptsWO[1];
Q1 := SptsWO[7];
Q2 := SptsWO[3];
Q3 := SptsWO[4];
Q12 := SptsWO[6];
Q13 := SptsWO[5];
Q23 := SptsWO[2];
BO, phiO := BlowupEO(DesO); // The blow-up of the line EO


// Example of an almost ordinary genus 2 curve in characteristic 2
QAO<r> := GF(2);
PolQAO<x> := PolynomialRing(QAO);
fAO := x^6+x^5+1;
gAO := x*(x-1)^2;
CAO := HyperellipticCurve(fAO,gAO);
JAO := Jacobian(CAO);
KumAO := GeneralKummerSurface(JAO);
RootsAO := Factorisation(gAO);
SptsKAO := SingularPoints(KumAO); 
#SptsKAO; // There are 2 singular points 
[TjurinaP3(pt): pt in SptsKAO]; // They are all D8^1 singularities, as their Tjurina number is 12
JacAO := GeneralJacobianSurface(JAO);
DesAO := DesingularisedKummer(JAO);
SptsDesAO := SingularPoints(DesAO); 
#SptsDesAO; // There are 4 singular points
[TjurinaP5(pt): pt in SptsDesAO]; // They are two D4^1 and two A3
ExAO, TrAO, plAO := Lines(JAO, DesAO);
WAO := WeddleSurface(JAO);
piAO := WeddleQuotient(DesAO, WAO);
SptsWAO := SingularPoints(WAO);
#SptsWAO; // There are 3 singular points 
[TjurinaP3(pt): pt in SptsWAO]; // There is an A3, and A7 and a D5
QO := SptsWAO[1];
Q1 := SptsWAO[2];
Q2 := SptsWAO[3];
BAO, phiAO := BlowupEO(DesAO); // The blow-up of the line EO
P<b1, b2, b3, b4, b5, b6, w1, w2, w3, w4> := AmbientSpace(BAO);
imEO := IrreducibleComponents(ReducedSubscheme(Scheme(BAO,[b1,b2,b3,b4])))[3]; // The image of EO under the blow-up
imP1 := IrreducibleComponents(ReducedSubscheme(Scheme(BAO,[b1,b2,b3,b4])))[2]; // The image of the intersection of EO and T1 under the blow-up
imP2 := IrreducibleComponents(ReducedSubscheme(Scheme(BAO,[b1,b2,b3,b4])))[1]; // The image of the intersection of EO and T2 under the blow-up
imT1 := phiAO(TrAO[1]); // The image of T1 under the blow-up
imT2 := phiAO(TrAO[2]); // The image of T2 under the blow-up
// The intersection points
IrreducibleComponents(Intersection(imP1,imT1))[1];
P11 := BAO![0,0,0,0,1,0,1,0,0,1]; 
IsSingular(P11); // It's smooth
IrreducibleComponents(Intersection(imP1,imEO))[1];
P01 := BAO![0,0,0,0,1,0,0,0,0,1]; 
IsSingular(P11); // It's singular
IrreducibleComponents(Intersection(imP2,imEO))[1];
P02 := BAO![0,0,0,0,1,1,0,0,0,1]; 
IsSingular(P02); // It's smooth
IrreducibleComponents(Intersection(imP2,imT2))[1];
P22 := BAO![0,0,0,0,1,1,1,1,1,1]; 
IsSingular(P22); // It's singular

// Example of a supersingular genus 2 curve in characteristic 2
QSS<r> := GF(2,12);
PolQSS<x> := PolynomialRing(QSS);
fSS := x^6+x+1;
gSS := x^3;
CSS := HyperellipticCurve(fSS,gSS);
JSS := Jacobian(CSS);
KumSS := GeneralKummerSurface(JSS);
RootsSS := Factorisation(gSS);
SptsKSS := SingularPoints(KumSS); 
#SptsKSS; // There is one singular point 
JacSS := GeneralJacobianSurface(JSS);
DesSS := DesingularisedKummer(JSS);
SptsDesSS := SingularPoints(DesSS); 
#SptsDesSS; // There is one singular points
IntMatDes(SptsDesSS[1]); // The intersection matrix of the singular point
ExSS, TrSS, DesSS := Lines(JSS, DesSS);
WSS := WeddleSurface(JSS);
IrreducibleComponents(ReducedSubscheme(SingularSubscheme(WSS)))[1]; // The singular line of the Weddle
BSS, phiSS := BlowupEO(DesSS); // The blow-up of the line EO

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

