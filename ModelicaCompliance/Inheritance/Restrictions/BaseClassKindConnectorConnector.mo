within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindConnectorConnector
  extends Icons.TestCase;

  connector Base
    Real x = 4.0;
    flow Real f = 2.0;
  end Base;

  connector Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization connector is allowed to derive from another connector.</html>"));
end BaseClassKindConnectorConnector;
