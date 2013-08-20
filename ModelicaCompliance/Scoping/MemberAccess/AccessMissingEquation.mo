within ModelicaCompliance.Scoping.MemberAccess;

model AccessMissingEquation
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  A a;
equation
  a.y = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's an error to try to access a non-existing
      member with the member access operator in an equation.</html>"));
end AccessMissingEquation;
