within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindConnectorType
  extends Icons.TestCase;

  type Base = output Real;

  connector Derived
    extends Base;
  end Derived;

  Derived d = 1.0;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization connector is allowed to derive from type.</html>"));
end BaseClassKindConnectorType;
