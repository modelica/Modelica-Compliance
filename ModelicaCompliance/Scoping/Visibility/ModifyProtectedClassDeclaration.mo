within ModelicaCompliance.Scoping.Visibility;


model ModifyProtectedClassDeclaration
  extends Icons.TestCase;

  model A
    Real x = 1.4;
  end A;

  B b;
protected
  model B = A(x = 3.2);

equation
  assert(Util.compareReal(b.x, 3.2), "b.x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's legal to modify a protected class
        declaration.</html>"));
end ModifyProtectedClassDeclaration;
