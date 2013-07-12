within ModelicaCompliance.Components.Variability;

model ConstantFunction
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := x * 2;
  end f;

  constant Real x = f(3.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a function with constant arguments is a constant
        expression.</html>"));
end ConstantFunction;
