within ModelicaCompliance.Algorithms.For;

model ArrayRangeExp
  extends Icons.TestCase;

  Real x[4];
algorithm
  for elem in {1, 3, 6, 7} loop
    x[integer(ceil(elem / 2.0))] := elem;
  end for;

  assert(abs(x[1] - 1.0) < 1e-10, "x[1] was not set correctly.");
  assert(abs(x[2] - 3.0) < 1e-10, "x[1] was not set correctly.");
  assert(abs(x[3] - 6.0) < 1e-10, "x[1] was not set correctly.");
  assert(abs(x[4] - 7.0) < 1e-10, "x[1] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an array range expression in a for-statement.</html>"));
end ArrayRangeExp;
