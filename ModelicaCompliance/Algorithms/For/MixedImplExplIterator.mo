within ModelicaCompliance.Algorithms.For;

model MixedImplExplIterator
  extends Icons.TestCase;

  Real x[3, 2];
algorithm
  for i in 1:3, j loop
    x[i, j] := i * j;
  end for;

  assert(abs(x[1, 1] - 1.0) < 1e-10, "x[1, 1] was not set correctly.");
  assert(abs(x[1, 2] - 2.0) < 1e-10, "x[1, 2] was not set correctly.");
  assert(abs(x[2, 1] - 2.0) < 1e-10, "x[2, 1] was not set correctly.");
  assert(abs(x[2, 2] - 4.0) < 1e-10, "x[2, 2] was not set correctly.");
  assert(abs(x[3, 1] - 3.0) < 1e-10, "x[3, 1] was not set correctly.");
  assert(abs(x[3, 2] - 6.0) < 1e-10, "x[3, 2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to mix implicit and explicit
        iterators in a for-statement.</html>"));
end MixedImplExplIterator;
