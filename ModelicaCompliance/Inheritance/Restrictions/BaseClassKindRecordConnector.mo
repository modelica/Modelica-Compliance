within ModelicaCompliance.Inheritance.Restrictions;


model BaseClassKindRecordConnector
  extends Icons.TestCase;

  connector Base
    Real x = 4.0;
  end Base;

  record Derived
    extends Base;
  end Derived;

  Derived d;
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization record is not allowed to derive from connector.</html>"));
end BaseClassKindRecordConnector;
