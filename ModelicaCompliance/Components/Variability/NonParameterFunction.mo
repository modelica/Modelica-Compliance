within ModelicaCompliance.Components.Variability;

model NonParameterFunction
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := x + x;
  end f;

  Real p = 3.0;
  parameter Real x = f(p);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a function with non-parameter arguments is not
        considered a parameter expression.</html>"));
end NonParameterFunction;
