within ModelicaCompliance.Redeclare.ConstrainingType;

model ConstrainingType
  extends Icons.TestCase;

  class A
    Real x;
  end A;

  class B
    Real x = 1.0;
  end B;

  replaceable B b constrainedby A;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a replaceable element can have an explicit constraining type.</html>"));
end ConstrainingType;
