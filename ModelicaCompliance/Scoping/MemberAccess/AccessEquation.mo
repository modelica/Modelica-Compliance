within ModelicaCompliance.Scoping.MemberAccess;

model AccessEquation
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  A a;
  Real y;
equation
  y = a.x;

  assert(Util.compareReal(y, 1.0), "y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the member access operator in an equation.</html>"));
end AccessEquation;
