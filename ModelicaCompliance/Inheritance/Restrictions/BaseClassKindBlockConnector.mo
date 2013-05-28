within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindBlockConnector
  extends Icons.TestCase;

  connector Base
    Real x = 4.0;
    flow Real f = 2.0;
  end Base;

  block Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization block is not allowed to derive from connector.</html>"));
end BaseClassKindBlockConnector;
