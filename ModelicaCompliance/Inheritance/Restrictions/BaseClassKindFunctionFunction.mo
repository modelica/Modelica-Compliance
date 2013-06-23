within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindFunctionFunction
  extends Icons.TestCase;

  function Base
    input Real x;
    output Real y = x;
  algorithm
  end Base;

  function Derived
    extends Base;
  end Derived;

  Real x = Derived(1.0);
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization function is allowed to derive from another function.</html>"));
end BaseClassKindFunctionFunction;
