within ModelicaCompliance.Scoping.Visibility;


model ProtectedMultiClass
  extends Icons.TestCase;

  model A
  protected
    Real x = 1.0;

    model B
      Real y = 2.0;
    end B;

    encapsulated model C
      Real z = 3.0;
    end C;

    Real z = 4.0;
  end A;

  A.C c; // Using A.C should be illegal here since C is protected in A.

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that not only the first element in a protected
        section is considered to be protected.</html>"));
end ProtectedMultiClass;
