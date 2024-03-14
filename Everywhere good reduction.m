// These are some computations regarding examples of abelian surfaces with everywhere good reduction to check whether there Kummer surfaces acquire good reduction at 2

PolQ<x> := PolynomialRing(GF(2));
K<w> := ext<GF(2)|x^2-x-105>;
PolK<x> := PolynomialRing(K);
Factorisation(-59049 + 321489*x - 387828*x^2 - 571617*x^3 + 1054233*x^4 +  590700*x^5 - 1003223*x^6 - 559653*x^7 + 322792*x^8 +  279921*x^9 + 51723*x^10);



Q2 := pAdicField(2,32);
K<w> := ext<Q2 | Polynomial([-105,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:=  w*(x^3+1);
f := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|x^2 - 2*x+2>;
K2;
PolK2<x> := PolynomialRing(K2);
g:=  w*(x^3+1);
f := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
pol := 4*f+g^2;
Factorisation(pol);



PolQ<x> := PolynomialRing(Rationals());
K<b> := NumberField(x^2-373);
PolK<x> := PolynomialRing(K);
f := (265*b-5118)*(8*x-b)*(8960*b*x^5 -2020471*x^4 +488608*b*x^3-22037369*x^2 +1332394*b*x-12019522);
C :=  HyperellipticCurve(f);

PolQ<x> := PolynomialRing(Rationals());
K<w> := NumberField(x^2-x-13);
PolK<x> := PolynomialRing(K);
g:= w*x^3 +w*x^2 +w+1;
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;

PolQ<x> := PolynomialRing(GF(2));
K<w> := ext<GF(2)|x^2-x-13>;
PolK<x> := PolynomialRing(K);
g:= w*x^3 +w*x^2 +w+1;
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;
K2<r> :=ext<K|x^2 + w^2*x + 1>;
PolK2<x> := PolynomialRing(K2);
Factorisation(x^8+x^4+x^3+x+1);

Q2 := pAdicField(2,20);
K<w> := ext<Q2 | Polynomial([-13,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:= w*x^3 +w*x^2 +w+1;
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|x^2 + w^2*x + 1>;
PolK2<x> := PolynomialRing(K2);
g:= w*x^3 +w*x^2 +w+1;
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;
pol := 4*f+g^2;
Factorisation(pol);



PolQ<x> := PolynomialRing(GF(2));
K<w> := ext<GF(2)|x^2-x-24>;
PolK<x> := PolynomialRing(K);
g:= x^3 +x+1;
f := (w-5)*x^6 + (3*w-14)*x^5 + (3*w-19)*x^4+(4*w-3)*x^3 -(3*w+16)*x^2 + (3*w+11)*x-(w+4);
Factorisation(g);
K2<r> :=ext<K|g>;
PolK2<x> := PolynomialRing(K2);
g:= x^3 +x+1;
Factorisation(g);


Q2 := pAdicField(2,20);
K<w> := ext<Q2 | Polynomial([-24,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:= x^3 +x+1;
f := (w-5)*x^6 + (3*w-14)*x^5 + (3*w-19)*x^4+(4*w-3)*x^3 -(3*w+16)*x^2 + (3*w+11)*x-(w+4);
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|x^3 +x+1>;
PolK2<x> := PolynomialRing(K2);
g:= x^3 +x+1;
f := (w-5)*x^6 + (3*w-14)*x^5 + (3*w-19)*x^4+(4*w-3)*x^3 -(3*w+16)*x^2 + (3*w+11)*x-(w+4);
pol := 4*f+g^2;
Factorisation(pol);


Q2 := pAdicField(2,20);
K<w> := ext<Q2 | Polynomial([-102,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:= x^3 +x^2+1;
f := -2*x^6 + (-3*w+1)*x^5 -219*x^4 + (-83*w+41)*x^3 -1806*x^2+(-204*w+102)*x-977;
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|x^3 +x^2+1>;
PolK2<x> := PolynomialRing(K2);
g:= x^3 +x^2+1;
f := -2*x^6 + (-3*w+1)*x^5 -219*x^4 + (-83*w+41)*x^3 -1806*x^2+(-204*w+102)*x-977;
pol := 4*f+g^2;
Factorisation(pol);

Q2 := pAdicField(2,20);
K<w> := ext<Q2 | Polynomial([-928/4,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:= x^3 +x+1;
f := -134*x^6 -(146*w-73)*x^5 -13427*x^4 -(3255*w-1627)*x^3-89746*x^2 -(6523*w-3261)*x-39941;
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|x^3 +x+1>;
PolK2<x> := PolynomialRing(K2);
g:= x^3 +x+1;
f := -134*x^6 -(146*w-73)*x^5 -13427*x^4 -(3255*w-1627)*x^3-89746*x^2 -(6523*w-3261)*x-39941;
pol := 4*f+g^2;
Factorisation(pol);

Q2 := pAdicField(2,20);
K<w> := ext<Q2 | Polynomial([-928/4,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:= x^3 +x+1;
f := 23*x^6 + (90*w-45)*x^5 +33601*x^4 + (28707*w-14354)*x^3+3192149*x^2 + (811953*w-405977)*x+19904990;
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|x^3 +x+1>;
PolK2<x> := PolynomialRing(K2);
g:= x^3 +x+1;
f := 23*x^6 + (90*w-45)*x^5 +33601*x^4 + (28707*w-14354)*x^3+3192149*x^2 + (811953*w-405977)*x+19904990;
pol := 4*f+g^2;
Factorisation(pol);

PolQ<x> := PolynomialRing(GF(2));
K<w> := ext<GF(2)|x^2-x-420/4>;
PolK<x> := PolynomialRing(K);
g:=  w*x^3 + x^2 + (w + 1)*x + w + 1;
f := (13*w + 77)*x^6 + (593*w + 6772)*x^5 + (15049*w + 131460)*x^4+ (163829*w + 1727293)*x^3 + (1167345*w + 10787410)*x^2+ (3985370*w + 40412781)*x + 6111237*w + 58050373;
Factorisation(g);

Q2 := pAdicField(2,20);
K<w> := ext<Q2 | Polynomial([-420/4,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:=  w*x^3 + x^2 + (w + 1)*x + w + 1;
f := (13*w + 77)*x^6 + (593*w + 6772)*x^5 + (15049*w + 131460)*x^4+ (163829*w + 1727293)*x^3 + (1167345*w + 10787410)*x^2+ (3985370*w + 40412781)*x + 6111237*w + 58050373;
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|w*x^3 + x^2 + (w + 1)*x + w + 1>;
PolK2<x> := PolynomialRing(K2);
g:=  w*x^3 + x^2 + (w + 1)*x + w + 1;
f := (13*w + 77)*x^6 + (593*w + 6772)*x^5 + (15049*w + 131460)*x^4+ (163829*w + 1727293)*x^3 + (1167345*w + 10787410)*x^2+ (3985370*w + 40412781)*x + 6111237*w + 58050373;
pol := 4*f+g^2;
Factorisation(pol);

PolQ<x> := PolynomialRing(GF(2));
K<w> := ext<GF(2)|x^2-x-1596/4>;
PolK<x> := PolynomialRing(K);
g:=  x^3 + w*x^2 + (w + 1)*x + w + 1;
f := (14154412*w + 275745514)*x^6 - (489014393*w + 9526607332)*x^5+ (7039395048*w + 137136152764)*x^4 - (54043428224*w + 1052833060832)*x^3+ (233382395752*w + 4546578743807)*x^2 - (537510739916*w + 10471376373574)*x+ 515810377784*w + 10048626384323;
Factorisation(g);

Q2 := pAdicField(2,20);
K<w> := ext<Q2 | Polynomial([-1596/4,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g:=  x^3 + w*x^2 + (w + 1)*x + w + 1;
f := (14154412*w + 275745514)*x^6 - (489014393*w + 9526607332)*x^5+ (7039395048*w + 137136152764)*x^4 - (54043428224*w + 1052833060832)*x^3+ (233382395752*w + 4546578743807)*x^2 - (537510739916*w + 10471376373574)*x+ 515810377784*w + 10048626384323;
pol := 4*f+g^2;
Factorisation(pol);
K2<r> :=ext<K|x^3 + w*x^2 + (w + 1)*x + w + 1>;
PolK2<x> := PolynomialRing(K2);
g:=  x^3 + w*x^2 + (w + 1)*x + w + 1;
f := (14154412*w + 275745514)*x^6 - (489014393*w + 9526607332)*x^5+ (7039395048*w + 137136152764)*x^4 - (54043428224*w + 1052833060832)*x^3+ (233382395752*w + 4546578743807)*x^2 - (537510739916*w + 10471376373574)*x+ 515810377784*w + 10048626384323;
pol := 4*f+g^2;
Factorisation(pol);