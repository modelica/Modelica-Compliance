within ModelicaCompliance.Algorithms.For;

model ImplicitIteratorEqRange
  extends Icons.TestCase;

  Real x[3], y[3];
algorithm
  for i loop
    x[i] := y[i];
    y[i] := i;
  end for;

  assert(abs(x[1] - 1.0) < 1e-10, "x[1] was not set correctly.");
  assert(abs(x[2] - 2.0) < 1e-10, "x[2] was not set correctly.");
  assert(abs(x[3] - 3.0) < 1e-10, "x[3] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that an iterator for an implicit range can be used to
      subscript multiple dimensions, as long as the dimensions are the same.</html>"));
end ImplicitIteratorEqRange;
