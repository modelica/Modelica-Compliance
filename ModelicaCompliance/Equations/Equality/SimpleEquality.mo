within ModelicaCompliance.Equations.Equality;

model SimpleEquality
  extends Icons.TestCase;

  Real x;
equation
  x = 3.0;

  assert(Util.compareReal(x, 3.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests simple equality in equation sections.</html>"));
end SimpleEquality;
