within ModelicaCompliance.Components.Variability;

model NonConstantFunction
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := 3.0 * x;
  end f;

  Real x = 3.0;
  constant Real y = f(x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a function with non-constant arguments is not
        considered a constant expression.</html>"));
end NonConstantFunction;
