within ModelicaCompliance.Redeclare.ConstrainingType;

model ReplaceableNonSubtypeLongClass
  extends Icons.TestCase;

  class A
    Real x = 2.0;
    Real y = 3.0;
  end A;

  replaceable class B
    Real x = 1.0;
  end B constrainedby A;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a replaceable long class definition must be a subtype
        of it's constraining class. This test should fail since B is not a subtype of A.</html>"));
end ReplaceableNonSubtypeLongClass;
