within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindConnectorFunction
  extends Icons.TestCase;

  function Base
    input Real x;
    output Real y = x;
  algorithm
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
    info = "<html>Checks that a class with specialization connector is not allowed to derive from function.</html>"));
end BaseClassKindConnectorFunction;
