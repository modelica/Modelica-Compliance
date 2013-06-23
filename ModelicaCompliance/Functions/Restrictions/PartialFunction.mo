within ModelicaCompliance.Functions.Restrictions;

model PartialFunction
  extends Icons.TestCase;

  partial function func
    input Integer a;
    output Integer b;
  algorithm
    b := a;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a partial function cannot be called in a simulation model. 
For a function to be called in a simulation model, it must have either an algorithm section or an external function interface as its body, or be defined as a function partial derivative and it may not be partial.</html>"));
end PartialFunction;
