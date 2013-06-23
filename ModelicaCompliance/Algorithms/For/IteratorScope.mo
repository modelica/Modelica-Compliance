within ModelicaCompliance.Algorithms.For;

model IteratorScope
  extends Icons.TestCase;

  Real x[3];
algorithm
  for i in 1:2 loop
    x[i] := i;
  end for;

  x[i] := 2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the iterator can not be used outside the scope of
      the for-statement.</html>"));
end IteratorScope;
