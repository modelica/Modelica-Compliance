within ModelicaCompliance.Functions.Restrictions;

model FunctionAssignInput
  extends Icons.TestCase;

  function func
    input Integer a;
    output Integer b;
  algorithm
    a := 1;
    b := a;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that you cannot assign to input in a function.
    Input formal parameters are read-only after being bound to the actual arguments or default values, i.e., they may not be assigned values in the body of the function.</html>"));
end FunctionAssignInput;
