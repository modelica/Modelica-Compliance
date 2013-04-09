within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindModelBlock
  extends Icons.TestCase;

  block Base
    Real x = 5.0;
  end Base;

  model Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization model is allowed to derive from block.</html>"));
end BaseClassKindModelBlock;
