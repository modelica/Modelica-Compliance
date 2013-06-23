within ModelicaCompliance.Algorithms.For;

model SingleIterator
  extends Icons.TestCase;

  Real x[2];
algorithm
  for i in 1:2 loop
    x[i] := i;
  end for;

  assert(Util.compareReal(x[1], 1.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], 2.0), "x[2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests a single iteration range in a for-statement.</html>"));
end SingleIterator;
