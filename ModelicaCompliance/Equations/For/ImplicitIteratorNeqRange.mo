within ModelicaCompliance.Equations.For;

model ImplicitIteratorNeqRange
  extends Icons.TestCase;

  Real x[3], y[4];
equation
  for i loop
    x[i] = y[i];
    y[i] = i;
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that an iterator for an implicit range can not be used to
      subscript multiple dimensions if the dimensions are not the same.</html>"));
end ImplicitIteratorNeqRange;
