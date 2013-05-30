within ModelicaCompliance.Redeclare.ConstrainingType;

model ReplaceableNonSubtypeComponent
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 2.0;
    Real y = 3.0;
  end B;

  replaceable A a constrainedby B;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the type of a replaceable component must be a subtype
        of the constraining type. This test should fail since A is not a subtype of B.</html>"));
end ReplaceableNonSubtypeComponent;
