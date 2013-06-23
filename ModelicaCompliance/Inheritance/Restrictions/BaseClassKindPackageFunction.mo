within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindPackageFunction
  extends Icons.TestCase;

  function Base
    input Real x;
    output Real y = x;
  algorithm
  end Base;

  package Derived
    extends Base;
  end Derived;

  Real x = Derived.x;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization package is not allowed to derive from function.</html>"));
end BaseClassKindPackageFunction;
