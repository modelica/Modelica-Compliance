within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindModelConnector
  extends Icons.TestCase;

  connector Base
    Real x = 4.0;
    flow Real f = 2.0;
  end Base;

  model Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization model is not allowed to derive from connector.</html>"));
end BaseClassKindModelConnector;
