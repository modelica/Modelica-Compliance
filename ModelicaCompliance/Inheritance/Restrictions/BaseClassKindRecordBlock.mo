within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindRecordBlock
  extends Icons.TestCase;

  block Base
    Real x = 5.0;
  end Base;

  record Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization record is not allowed to derive from block.</html>"));
end BaseClassKindRecordBlock;
