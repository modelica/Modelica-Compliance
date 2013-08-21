within ModelicaCompliance.Scoping.Visibility;

model AccessProtectedComp
  extends Icons.TestCase;

  model A
  protected
    Real x = 23.0;
  end A;

  A a;
  Real y = a.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a protected component may not be accessed
        outside the scope it's declared in.</html>"));
end AccessProtectedComp;
