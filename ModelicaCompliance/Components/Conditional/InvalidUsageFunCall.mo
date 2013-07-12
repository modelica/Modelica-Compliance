within ModelicaCompliance.Components.Conditional;

model InvalidUsageFunCall
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := x;
  end f;

  Real x = 2.0 if true;
  Real y = f(x);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a conditional component is not allowed to be used
        in a function call. Conditional components may only be modified or used in
        connections.</html>"));
end InvalidUsageFunCall;
