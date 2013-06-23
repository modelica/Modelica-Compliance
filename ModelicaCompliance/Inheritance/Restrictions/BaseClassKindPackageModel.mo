within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindPackageModel
  extends Icons.TestCase;

  model Base
    Real y = 6.0;
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
    info = "<html>Checks that a class with specialization package is not allowed to derive from model.</html>"));
end BaseClassKindPackageModel;
