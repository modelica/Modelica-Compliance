within ModelicaCompliance.Equations.For;

model IteratorScope
  extends Icons.TestCase;

  Real x[3];
equation
  for i in 1:2 loop
    x[i] = i;
  end for;

  x[i] = 2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the iterator can not be used outside the scope of
      the for-equation.</html>"));
end IteratorScope;
