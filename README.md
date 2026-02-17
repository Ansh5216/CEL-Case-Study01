# 📘 Chemical Equilibrium Case Study

## Ammonia Decomposition Using Bisection Method

------------------------------------------------------------------------

## 📌 Project Overview

This project presents a numerical analysis of the chemical equilibrium
of ammonia decomposition.\
The reaction considered is:

2NH3 (g) ⇌ N2 (g) + 3H2 (g)

The objective is to determine the equilibrium extent of reaction by
applying the Law of Mass Action and solving the resulting nonlinear
algebraic equation using the **Bisection Method** in MATLAB.

This case study demonstrates the integration of:

-   Chemical equilibrium principles\
-   Stoichiometric analysis\
-   Nonlinear equation formulation\
-   Numerical root-finding methods

------------------------------------------------------------------------

## ⚙️ Problem Description

Initial conditions assumed:

-   NH3 = 1 mol/L
-   N2 = 0
-   H2 = 0

Using an ICE table:

  Species   Initial   Change   Equilibrium
  --------- --------- -------- -------------
  NH3       1         −2x      1 − 2x
  N2        0         +x       x
  H2        0         +3x      3x

------------------------------------------------------------------------

## 🧮 Mathematical Formulation

Equilibrium constant expression:

Kc = \[N2\]\[H2\]\^3 / \[NH3\]\^2

Substituting equilibrium values:

Kc = 27x\^4 / (1 − 2x)\^2

Rearranging:

Kc(1 − 2x)\^2 = 27x\^4

Final nonlinear polynomial form:

27x\^4 − 4Kc x\^2 + 4Kc x − Kc = 0

This is a fourth-degree nonlinear equation solved numerically.

------------------------------------------------------------------------

## 🔍 Why Bisection Method?

The equation:

-   Is nonlinear
-   Has no simple analytical solution
-   Has a physically bounded root

Since concentration must remain non-negative:

0 ≤ x ≤ 0.5

The Bisection Method was chosen because:

-   It is simple and robust
-   It guarantees convergence
-   It works within a defined interval

------------------------------------------------------------------------

## 💻 MATLAB Implementation

Example function definition:

``` matlab
f = @(x) 27*x.^4 - 4*Kc*x.^2 + 4*Kc*x - Kc;
```

The algorithm iteratively reduces the interval until the equilibrium
extent (x) is obtained.

------------------------------------------------------------------------

## 📊 Results

-   The value of x determines equilibrium concentrations.
-   Higher Kc → Reaction favors products (N2 and H2).
-   Lower Kc → Reaction favors ammonia.
-   Physical bounds ensure realistic solution.

------------------------------------------------------------------------

## 🏭 Industrial Relevance

Ammonia decomposition is important in:

-   Hydrogen production
-   Fuel cell technology
-   Chemical process industries
-   Catalytic reactor design

Understanding equilibrium behavior is essential for reactor optimization
and yield improvement.

------------------------------------------------------------------------

## 📚 Concepts Used

-   Chemical Equilibrium
-   Law of Mass Action
-   ICE Table Method
-   Nonlinear Algebraic Equations
-   Bisection Method
-   MATLAB Programming

------------------------------------------------------------------------

## 👨‍🎓 Academic Purpose

This project was developed as part of a chemical engineering case study
to demonstrate how numerical methods can be applied to solve equilibrium
problems.

------------------------------------------------------------------------

## 🚀 Future Improvements

-   Implement Newton--Raphson Method
-   Compare convergence speed
-   Extend to temperature-dependent Kc
-   Perform sensitivity analysis
