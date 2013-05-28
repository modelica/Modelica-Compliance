within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindPackageConnector
  extends Icons.TestCase;

  connector Base
    Real x = 4.0;
    flow Real f = 2.0;
  end Base;

  package Derived
    extends Base;
  end Derived;

  Real x = Derived.x;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization package is not allowed to derive from connector.</html>"));
end BaseClassKindPackageConnector;
