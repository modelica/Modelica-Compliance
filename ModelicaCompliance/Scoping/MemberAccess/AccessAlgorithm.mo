within ModelicaCompliance.Scoping.MemberAccess;

model AccessEquation
  extends Icons.TestCase;

  model A
    Real x;
  end A;

  A a;
algorithm
  a.x := 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the member access operator in an algorithm.</html>"));
end AccessEquation;
