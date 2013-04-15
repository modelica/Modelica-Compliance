within ModelicaCompliance.Functions.Restrictions;

model FunctionMultipleAlgorithm
  extends Icons.TestCase;

  function func
    input Integer a;
    output Integer b;
  protected 
    Integer c;
  algorithm
    b := a;
  algorithm
    c := a;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot contain multiple algorithm sections. 
    A function may not be used in connections, may have no equations, may have no initial algorithm, and can have at most one algorithm section, which, if present, is the body of the function.</html>"));
end FunctionMultipleAlgorithm;
