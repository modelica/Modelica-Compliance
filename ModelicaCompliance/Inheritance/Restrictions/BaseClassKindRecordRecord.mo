within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindRecordRecord
  extends Icons.TestCase;

  record Base
    Real x = 3.0;
  end Base;

  record Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization record is allowed to derive from another record.</html>"));
end BaseClassKindRecordRecord;
