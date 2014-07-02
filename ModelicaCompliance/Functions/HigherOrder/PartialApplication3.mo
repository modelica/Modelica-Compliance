within ModelicaCompliance.Functions.HigherOrder;

model PartialApplication3
  extends Icons.TestCase;

  function quadrature
    "Integrate function y = integrand(x) from x1 to x2"
    input Real x1;
    input Real x2;
    input Integrand integrand; // Integrand is a partial function, see below
    output Real integral;
  algorithm
      integral := (x2 - x1) * (integrand(x1) + integrand(x2)) / 2;
  end quadrature;

  partial function Integrand
   input Real x;
   output Real y;
  end Integrand;

  function IdentityFunction
    input Real x;
    output Real y;
  algorithm
    y := x;
  end IdentityFunction;

  function Parabola
    extends Integrand;
  algorithm
    y := x * x;
  end Parabola;

  function quadrature2
    "Integrate function y = integrand(x) from x1 to x2"
    input Real x1;
    input Real x2;
    input Integrand integrand; // Integrand is a partial function type
    output Real integral;
  algorithm
    integral := quadrature(x1, (x1 + x2) / 2, integrand) +
                quadrature((x1 + x2) / 2, x2, integrand);
  end quadrature2;

  function Sine "y = Sine(x,A,w)"
    extends Integrand;
    input Real A;
    input Real w;
  algorithm
    y := A * sin(w*x);
  end Sine;

  function Sine2 "y = Sine2(A, w, x)"
    input Real A;
    input Real w;
    input Real x; // Note: x is now last in argument list.
    output Real y;
  algorithm
    y := A * sin(w * x);
  end Sine2;

  partial function SurfaceIntegrand
    input Real x;
    input Real y;
    output Real z;
  end SurfaceIntegrand;

  function quadratureOnce
    input Real x;
    input Real y1;
    input Real y2;
    input SurfaceIntegrand integrand;
    output Real z;
  algorithm
    z := quadrature(y1, y2, function integrand(y=  x));
    // This is according to case (d) and needs to bind the 2nd argument
  end quadratureOnce;

  function surfaceQuadrature
    input Real x1;
    input Real x2;
    input Real y1;
    input Real y2;
    input SurfaceIntegrand integrand;
    output Real integral;
  algorithm
    integral := quadrature(x1, x2, function quadratureOnce(y1=  y1, y2=  y2, integrand=  integrand));
    // Case (b) and (c)
  end surfaceQuadrature;

  function SurfaceIntegrandImpl
    extends SurfaceIntegrand;
  algorithm
    z := x * y;
  end SurfaceIntegrandImpl;

  Integer i = integer(10.0 * surfaceQuadrature(0, 1, 0, 1, SurfaceIntegrandImpl));

equation
  assert(i == 2, "function application did not work correctly");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that partial application of function arguments to functions are working.</html>"));
end PartialApplication3;
