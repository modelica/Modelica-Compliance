within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindConnectorType
  extends Icons.TestCase;

  type Base = Real;

  connector Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization connector is allowed to derive from type.</html>"));
end BaseClassKindConnectorType;
