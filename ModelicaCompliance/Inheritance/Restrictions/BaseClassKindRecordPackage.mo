within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindRecordPackage
  extends Icons.TestCase;

  package Base
    constant Real x = 2.0;
  end Base;

  record Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization record is not allowed to derive from package.</html>"));
end BaseClassKindRecordPackage;
