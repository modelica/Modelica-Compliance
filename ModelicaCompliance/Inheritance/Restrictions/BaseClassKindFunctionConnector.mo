within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindFunctionConnector
  extends Icons.TestCase;

  connector Base
    Real x = 4.0;
    flow Real f = 2.0;
  end Base;

  function Derived
    extends Base;
  algorithm
  end Derived;

  Real x = Derived(1.0);
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization function is not allowed to derive from connector.</html>"));
end BaseClassKindFunctionConnector;
