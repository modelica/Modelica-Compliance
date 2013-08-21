within ModelicaCompliance.Scoping.Visibility;


model ModifyProtectedCompDeclaration
  extends Icons.TestCase;

  model A
    Real x = 5.2;
  end A;

protected
  A a(x = 4.21);

equation
  assert(Util.compareReal(a.x, 4.21), "a.x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's legal to modify a protected component
        declaration.</html>"));
end ModifyProtectedCompDeclaration;
