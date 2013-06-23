within ModelicaCompliance.Algorithms.For;

model ImplicitIntegerIterator
  extends Icons.TestCase;

  Real x[4];
  Real y[4] = {1, 2, 3, 4};
algorithm
  for i loop
    x[i] := 2 * y[i];
  end for;

  assert(Util.compareReal(x[1], 2.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], 4.0), "x[2] was not set correctly.");
  assert(Util.compareReal(x[3], 6.0), "x[3] was not set correctly.");
  assert(Util.compareReal(x[4], 8.0), "x[4] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an integer implicit iteration range in a for-statement.</html>"));
end ImplicitIntegerIterator;
