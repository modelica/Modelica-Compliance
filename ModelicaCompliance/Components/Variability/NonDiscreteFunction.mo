within ModelicaCompliance.Components.Variability;

model NonDiscreteFunction
  extends Icons.TestCase;

  function f
    input Real x;
    output Integer y;
  algorithm
    y := integer(x);
  end f;

  Real x = time;
  Integer y = f(x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a function with non-discrete-time arguments is
        not considered a discrete-time expression.</html>"));
end NonDiscreteFunction;
