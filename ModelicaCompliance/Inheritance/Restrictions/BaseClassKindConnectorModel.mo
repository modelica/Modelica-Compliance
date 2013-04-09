within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindConnectorModel
  extends Icons.TestCase;

  model Base
    Real y = 6.0;
  end Base;

  connector Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization connector is not allowed to derive from model.</html>"));
end BaseClassKindConnectorModel;
