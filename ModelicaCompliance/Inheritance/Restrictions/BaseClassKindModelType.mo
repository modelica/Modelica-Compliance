within ModelicaCompliance.Inheritance.Restrictions;


model BaseClassKindModelType
  extends Icons.TestCase;

  type Base = Real;

  model Derived
    extends Base;
  end Derived;

  Derived d = 1.0;
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization model is not allowed to derive from type.</html>"));
end BaseClassKindModelType;
