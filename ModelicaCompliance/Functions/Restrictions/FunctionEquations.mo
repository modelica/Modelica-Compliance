within ModelicaCompliance.Functions.Restrictions;

model FunctionEquations
  extends Icons.TestCase;

  function func
    input Integer a;
    output Integer b;
  equation
    b = a;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot be contain equations. 
    A function may not be used in connections, may have no equations, may have no initial algorithm, and can have at most one algorithm section, which, if present, is the body of the function.</html>"));
end FunctionEquations;
