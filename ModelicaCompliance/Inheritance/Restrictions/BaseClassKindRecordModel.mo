within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindRecordModel
  extends Icons.TestCase;

  model Base
    Real y = 6.0;
  end Base;

  record Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization record is not allowed to derive from model.</html>"));
end BaseClassKindRecordModel;
