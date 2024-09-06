# Kummer surfaces and Jacobians of genus two curves in characteristic two

This repositary aims to complement the article **Explicit desingularisation of Kummer surfaces in characteristic two via specialisation**. It includes code for two programming languages: **Mathematica**, where all of the heavy computations have been performed, such as computing the equations of the Jacobian, and **Magma**, which has the arithmetic geometry functionalities that allow the equations that have been computed to be used for practical calculations. 

In order to execute the Mathematica code, it is necessary to use the package <a href='https://resources.wolframcloud.com/FunctionRepository/resources/LinearAlgebraMod/' >LinearAlgebraMod</a> from the Wolfram function repository. This was contributed to **Daniel Lichtblau**, who I thank. For the Magma code, I used fragments of the <a href='https://arxiv.org/abs/0910.2589' >code developed to compute models of quartic Kummer surfaces</a> by **Steffen Müller**, who I also thank. 

The three Mathematica notebooks, `Part 1`, `Part 2` and `Part 3` do roughly the following:
1. Compute a basis of the Riemann-Roch space associated to twice the sum of the theta divisors associated to the points of infinity for a general genus two curve.
2.  Compute the relations between the elements of this basis to obtain the quadratic relations that the elements of this basis satisfy to obtain the equations for the Jacobian.
3.  Study the corresponding Kummer and Weddle surfaces, in order to understand the desingularisations.

The text files provided in this package: `72 equations of the Jacobian.txt`, `Change of coordinates - Almost ordinary.txt`, `Equation Kummer in P3.txt`, `Equations Kummer in P5.txt` and `Equations of the bibj.txt`, besides storing important information, serve a practical purpose as they greatly accelerate the execution of the Mathematica notebooks. These files, can be generated using these notebooks, but they may take quite a bit of time (particularly `Equations of the bibj.txt`).

The three Magma files do the following:
* `Functions.m` is a compilation of functions that we can use in Magma to study projective embeddings of Jacobians of genus 2 curves and desingularisations of Kummer surfaces (in any characteristic).
* `Examples.m` has examples of use of the previous functions and provide evidences of the claims of Sections 4, 5 and 6 of the paper.
* `Everywhere good reduction.m` contains all the computations of Section 7 of the paper.
