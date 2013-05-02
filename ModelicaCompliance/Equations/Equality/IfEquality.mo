within ModelicaCompliance.Equations.Equality;

model IfEquality
  //extends Icons.TestCase;

  Real x, y;
equation
  (if x < 10 then x + 1 else x) = y;
  x = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests equality with a more complex expression on the left.</html>"));
end IfEquality;
