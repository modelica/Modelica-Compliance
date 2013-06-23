within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindModelRecord
  extends Icons.TestCase;

  record Base
    Real x = 3.0;
  end Base;

  model Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization model is allowed to derive from record.</html>"));
end BaseClassKindModelRecord;
