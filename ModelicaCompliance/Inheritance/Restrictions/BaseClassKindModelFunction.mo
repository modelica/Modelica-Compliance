within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindModelFunction
  extends Icons.TestCase;

  function Base
    input Real x;
    output Real y = x;
  end Base;

  model Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization model is not allowed to derive from function.</html>"));
end BaseClassKindModelFunction;
