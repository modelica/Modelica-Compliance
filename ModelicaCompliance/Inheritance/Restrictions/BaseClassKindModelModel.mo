within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindModelModel
  extends Icons.TestCase;

  model Base
    Real y = 6.0;
  end Base;

  model Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization model is allowed to derive from another model.</html>"));
end BaseClassKindModelModel;
