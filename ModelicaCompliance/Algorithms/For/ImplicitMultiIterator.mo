within ModelicaCompliance.Algorithms.For;

model ImplicitMultiIterator
  extends Icons.TestCase;

  Real x[3, 2, 3], y[3, 3, 2];
algorithm
  for i, j, k loop
    y[i, k, j] := i * j * k;
    x[i, j, k] := 2 * y[k, i, j];
  end for;

  assert(Util.compareReal(x[1, 1, 1], 2.0),  "x[1, 1, 1] was not set correctly.");
  assert(Util.compareReal(x[1, 1, 2], 4.0),  "x[1, 1, 2] was not set correctly.");
  assert(Util.compareReal(x[1, 1, 3], 6.0),  "x[1, 1, 3] was not set correctly.");
  assert(Util.compareReal(x[1, 2, 1], 4.0),  "x[1, 2, 1] was not set correctly.");
  assert(Util.compareReal(x[1, 2, 2], 8.0),  "x[1, 2, 2] was not set correctly.");
  assert(Util.compareReal(x[1, 2, 3], 12.0), "x[1, 2, 3] was not set correctly.");
  assert(Util.compareReal(x[2, 1, 1], 4.0),  "x[2, 1, 1] was not set correctly.");
  assert(Util.compareReal(x[2, 1, 2], 8.0),  "x[2, 1, 2] was not set correctly.");
  assert(Util.compareReal(x[2, 1, 3], 12.0), "x[2, 1, 3] was not set correctly.");
  assert(Util.compareReal(x[2, 2, 1], 8.0),  "x[2, 2, 1] was not set correctly.");
  assert(Util.compareReal(x[2, 2, 2], 16.0), "x[2, 2, 2] was not set correctly.");
  assert(Util.compareReal(x[2, 2, 3], 24.0), "x[2, 2, 3] was not set correctly.");
  assert(Util.compareReal(x[3, 1, 1], 6.0),  "x[3, 1, 1] was not set correctly.");
  assert(Util.compareReal(x[3, 1, 2], 12.0), "x[3, 1, 2] was not set correctly.");
  assert(Util.compareReal(x[3, 1, 3], 18.0), "x[3, 1, 3] was not set correctly.");
  assert(Util.compareReal(x[3, 2, 1], 12.0), "x[3, 2, 1] was not set correctly.");
  assert(Util.compareReal(x[3, 2, 2], 24.0), "x[3, 2, 2] was not set correctly.");
  assert(Util.compareReal(x[3, 2, 3], 36.0), "x[3, 2, 3] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests multiple implicit iteration ranges in a for-statement.</html>"));
end ImplicitMultiIterator;
