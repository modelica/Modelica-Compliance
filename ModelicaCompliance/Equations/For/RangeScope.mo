within ModelicaCompliance.Equations.For;

model RangeScope
  extends Icons.TestCase;

  Real x[3];
equation
  for i in 1:i loop
    x[i] = i;
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the range expression is not evaluated in the
      for-equation scope.</html>"));
end RangeScope;
