within ModelicaCompliance.Components.Variability;

model ParameterFunction
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := x + x;
  end f;

  parameter Real p = 3.0;
  parameter Real x = f(p);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a function with parameter arguments is a
        parameter expression.</html>"));
end ParameterFunction;
