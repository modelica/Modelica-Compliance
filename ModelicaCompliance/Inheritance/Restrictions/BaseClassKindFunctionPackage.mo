within ModelicaCompliance.Inheritance.Restrictions;


model BaseClassKindFunctionPackage
  extends Icons.TestCase;

  package Base
    constant Real z = 2.0;
  end Base;

  function Derived
    input Real x;
    output Real y;
  protected
    extends Base;
  algorithm
    y := x * z;
  end Derived;

  Real x = Derived(1.0);
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization function is not allowed to derive from package.</html>"));
end BaseClassKindFunctionPackage;
