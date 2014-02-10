within ModelicaCompliance.Scoping.MemberAccess;

model AccessAlgorithm
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  A a;
  Real y;
algorithm
  y := a.x;

  assert(Util.compareReal(y, 1.0), "y was not correctly set.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the member access operator in an algorithm.</html>"));
end AccessAlgorithm;
