within ModelicaCompliance.Equations.For;

model ImplicitBoolIterator
  extends Icons.TestCase;

  Boolean x[Boolean];
equation
  for i loop
    x[i] = i;
  end for;

  assert(x[false] == false, "x[false] was not set correctly.");
  assert(x[true] == true,    "x[true] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests a boolean implicit iteration range in a for-equation.</html>"));
end ImplicitBoolIterator;
