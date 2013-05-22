within ModelicaCompliance.Functions.Restrictions;

model FunctionInitialEquations
  extends Icons.TestCase;

  function func
    input Integer a;
    output Integer b;
  initial equation
    b = a;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot be contain equations.</html>"));
end FunctionInitialEquations;
