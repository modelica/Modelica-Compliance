within ModelicaCompliance.Algorithms.For;

model RangeScope
  extends Icons.TestCase;

  Real x[3];
algorithm
  for i in 1:i loop
    x[i] := i;
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the range expression is not evaluated in the
      for-statement scope.</html>"));
end RangeScope;
