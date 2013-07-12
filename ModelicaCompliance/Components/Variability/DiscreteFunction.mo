within ModelicaCompliance.Components.Variability;

model DiscreteFunction
  extends Icons.TestCase;

  function f
    input Real x;
    output Integer y;
  algorithm
    y := integer(x);
  end f;

  discrete Real x;
  Integer y = f(x);
equation
  when sample(0.0, 1.0) then
    x = time;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a function with discrete-time arguments is a
        discrete-time expression.</html>"));
end DiscreteFunction;
