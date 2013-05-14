within ModelicaCompliance.Equations.For;

model ImplicitIteratorEqRange
  extends Icons.TestCase;

  Real x[3], y[3];
equation
  for i loop
    x[i] = y[i];
    y[i] = i;
  end for;

  assert(Util.compareReal(x[1], 1.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], 2.0), "x[2] was not set correctly.");
  assert(Util.compareReal(x[3], 3.0), "x[3] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that an iterator for an implicit range can be used to
      subscript multiple dimensions, as long as the dimensions are the same.</html>"));
end ImplicitIteratorEqRange;
