within ModelicaCompliance.Scoping.Visibility;

model ProtectedMultiComp
  extends Icons.TestCase;

  model A
  protected
    Real x = 1.0;
    Real y = 2.0;
    Real z = 3.0;
  end A;

  A a;
  Real y = a.y; // Accessing a.y should be illegal here since y is protected in A.
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that not only the first component in a protected
        section is considered to be protected.</html>"));
end ProtectedMultiComp;
