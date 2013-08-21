within ModelicaCompliance.Scoping.Visibility;

model InheritedAccessProtectedComp
  extends Icons.TestCase;

  model A
  protected
    Real x = 4.21;
  end A;

  extends A;
  Real y = x;
equation
  assert(Util.compareReal(y, 4.21), "y was not correctly set.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that an inherited protected component can be used in
        the scope it's been inherited into.</html>"));
end InheritedAccessProtectedComp;
