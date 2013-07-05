within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindConnectorBlock
  extends Icons.TestCase;

  block Base
    Real x = 5.0;
  end Base;

  connector Derived
    extends Base;
    flow Real f;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization connector is not allowed to derive from block.</html>"));
end BaseClassKindConnectorBlock;
