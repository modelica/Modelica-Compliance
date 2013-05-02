within ModelicaCompliance.Algorithms.For;

model ShadowedIterator
  extends Icons.TestCase;

  constant Integer j = 4;
  Real x[j];
algorithm
  for j in 1:j loop
    x[j] := j;
  end for;

  assert(abs(x[1] - 1.0) < 1e-10, "x[1] was not set correctly");
  assert(abs(x[2] - 2.0) < 1e-10, "x[2] was not set correctly");
  assert(abs(x[3] - 3.0) < 1e-10, "x[3] was not set correctly");
  assert(abs(x[4] - 4.0) < 1e-10, "x[4] was not set correctly");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that the iterator in a for-loop can be shadowed by a
      variable in an enclosing scope.</html>"));
end ShadowedIterator;
