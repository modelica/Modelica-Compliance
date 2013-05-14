within ModelicaCompliance.Algorithms.For;

model RealRange
  extends Icons.TestCase;

  Real x[5];
algorithm
  for r in 1.0 : 1.5 : 5.5 loop
    x[integer(r)] := r;
  end for;

  x[3] := 3.0;

  assert(Util.compareReal(x[1], 1.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], 2.5), "x[2] was not set correctly.");
  assert(Util.compareReal(x[4], 4.0), "x[4] was not set correctly.");
  assert(Util.compareReal(x[5], 5.5), "x[5] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of a Real range in a for-statement.</html>"));
end RealRange;
