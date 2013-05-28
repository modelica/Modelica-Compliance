within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindFunctionPackage
  extends Icons.TestCase;

  package Base
    constant Real x = 2.0;
  end Base;

  function Derived
    extends Base;
  algorithm
  end Derived;

  Real x = Derived(1.0);
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization function is not allowed to derive from package.</html>"));
end BaseClassKindFunctionPackage;
