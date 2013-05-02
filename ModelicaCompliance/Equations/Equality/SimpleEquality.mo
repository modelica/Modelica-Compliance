within ModelicaCompliance.Equations.Equality;

model SimpleEquality
  extends Icons.TestCase;

  Real x;
equation
  x = 3.0;

  assert(abs(x - 3.0) <= 1e-10, "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests simple equality in equation sections.</html>"));
end SimpleEquality;
