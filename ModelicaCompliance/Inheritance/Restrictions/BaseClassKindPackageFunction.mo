within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindPackageFunction
  extends Icons.TestCase;

  function Base
    input Real x;
    output Real y = x;
  end Base;

  package Derived
    extends Base;
  end Derived;

  Real x = Derived.x;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization package is not allowed to derive from function.</html>"));
end BaseClassKindPackageFunction;
