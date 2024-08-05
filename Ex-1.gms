$onText
Example worked out using (i) GCH algorithm, (ii) Sharp-cut algorithm and (iii) Wolfram Mathematica.
Nonlinear objective function and two nonlinear constraints.
$offText

Parameter q;

Variable x_1, x_2, x_3, obj;

Equations fn, g1, g2;

* Constraints:

g1.. sqrt(x_1) -4 *x_2*x_2 - 2.0 * x_3  =g= 0;

g2.. 6.0 * x_3 * x_3 - 1.2 * x_1 * x_1 + 3.0 *x_3 *x_2 =g= 0;

* Objective function to be minimized:

fn..  obj =e= -2.0*x_3* x_1 * x_1 -5.0* x_1 * x_1+12.5 * x_2 * x_2;

* Bounds on variables:
q = 0.59;
x_1.lo = 0.0001;   x_1.up = 1.9 * q;   x_1.l = 1.0;
x_2.lo = 0.0001;   x_2.up = 1.7 * q;   x_2.l = 0.01;
x_3.lo = 0.0001;   x_3.up = 0.9 * q;   x_3.l = 0.2;

Model Ex1 /all/;

Solve Ex1 minimizing obj using nlp;

* End Ex1