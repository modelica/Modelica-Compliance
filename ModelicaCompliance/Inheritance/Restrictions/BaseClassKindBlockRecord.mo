within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindBlockRecord
  extends Icons.TestCase;

  record Base
    Real x = 3.0;
  end Base;

  block Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization block is allowed to derive from record.</html>"));
end BaseClassKindBlockRecord;
