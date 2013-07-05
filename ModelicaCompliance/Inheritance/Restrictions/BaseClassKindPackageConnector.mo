within ModelicaCompliance.Inheritance.Restrictions;


model BaseClassKindPackageConnector
  extends Icons.TestCase;

  connector Base
    constant Real x = 4.0;
  end Base;

  package Derived
    extends Base;
  end Derived;

  Real x = Derived.x;
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization package is not allowed to derive from connector.</html>"));
end BaseClassKindPackageConnector;
