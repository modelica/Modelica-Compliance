within ModelicaCompliance.Redeclare.ConstrainingType;

model ReplaceableNonSubtypeShortClass
  extends Icons.TestCase;

  class A
    Real x = 2.0;
    Real y = 3.0;
  end A;

  class B
    Real x = 1.0;
  end B;

  replaceable class C = B constrainedby A;
  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a replaceable short class definition must be a subtype
      of it's constraining class. This test should fail since B is not a subtype of A.</html>"));
end ReplaceableNonSubtypeShortClass;
