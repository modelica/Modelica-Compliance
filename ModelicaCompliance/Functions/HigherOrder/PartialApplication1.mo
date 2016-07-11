within ModelicaCompliance.Functions.HigherOrder;

model PartialApplication1
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

  Integer areaI = integer(area);
  parameter Integer N = 10;
  Real area;

algorithm 
    area := 0;
    for i in 1:N loop
      area := area + quadrature(0, 1, function Sine(A = 2, w = i * time));
    end for;

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that partial application of function arguments to functions are working.</html>"));
end PartialApplication1;
