within ModelicaCompliance.Inheritance.Restrictions;


model BaseClassKindFunctionBlock
  extends Icons.TestCase;

  block Base
    input Real x;
    output Real y = x;
  end Base;

  function Derived
    extends Base;
  algorithm
  end Derived;

  Real x = Derived(1.0);
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization function is not allowed to derive from block.</html>"));
end BaseClassKindFunctionBlock;
