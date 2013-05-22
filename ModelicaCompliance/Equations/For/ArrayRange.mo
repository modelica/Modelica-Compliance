within ModelicaCompliance.Equations.For;

model ArrayRange
  extends Icons.TestCase;

  Real x[4, 2];
equation
  for elem in {{1, 2}, {3, 4}, {5, 6}, {7, 8}} loop
    x[div(elem[2], 2), :] = elem;
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the range of a for-equation must be a vector
        expression, i.e. it should have exactly one dimension.</html>"));
end ArrayRange;
