within ModelicaCompliance.Algorithms.For;

model ImplicitBoolIterator
  extends Icons.TestCase;

  Boolean x[Boolean];
algorithm
  for i loop
    x[i] := i;
  end for;

  assert(x[false] == false, "x[false] was not set correctly.");
  assert(x[true] == true,    "x[true] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests a boolean implicit iteration range in a for-statement.</html>"));
end ImplicitBoolIterator;
