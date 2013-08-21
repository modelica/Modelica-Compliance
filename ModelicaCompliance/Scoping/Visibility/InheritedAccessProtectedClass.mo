within ModelicaCompliance.Scoping.Visibility;

model InheritedAccessProtectedClass
  extends Icons.TestCase;

  model A
  protected
    model B
      Real x = 6.89;
    end B;
  end A;

  extends A;
  B b;
equation
  assert(Util.compareReal(b.x, 6.89), "b.x was not correctly set.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a protected class can be used in the scope it's
        been inherited into.</html>"));
end InheritedAccessProtectedClass;
