within ModelicaCompliance.Algorithms.For;

model ArrayRange
  extends Icons.TestCase;

  Real x[4, 2];
algorithm
  for elem in {{1, 2}, {3, 4}, {5, 6}, {7, 8}} loop
    x[div(elem[2], 2), :] := elem;
  end for;

  assert(abs(x[1, 1] - 1.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[1, 2] - 2.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[2, 1] - 3.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[2, 2] - 4.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[3, 1] - 5.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[3, 2] - 6.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[4, 1] - 7.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[4, 2] - 8.0) < 1e-10, "x[1, 1] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an array range in a for-statement.</html>"));
end ArrayRange;
