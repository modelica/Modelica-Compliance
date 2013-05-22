within ModelicaCompliance.Functions.Restrictions;

model FunctionInitialAlgorithm
  extends Icons.TestCase;

  function func
    input Integer a;
    output Integer b;
  initial algorithm
    b := a;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot contain an initial algorithm.</html>"));
end FunctionInitialAlgorithm;
