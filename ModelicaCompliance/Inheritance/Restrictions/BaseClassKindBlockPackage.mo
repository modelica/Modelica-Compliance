within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindBlockPackage
  extends Icons.TestCase;

  package Base
    constant Real x = 2.0;
  end Base;

  block Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization block is not allowed to derive from package.</html>"));
end BaseClassKindBlockPackage;
