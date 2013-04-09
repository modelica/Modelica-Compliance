within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindBlockFunction
  extends Icons.TestCase;

  function Base
    input Real x;
    output Real y = x;
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
    info = "<html>Checks that a class with specialization block is not allowed to derive from function.</html>"));
end BaseClassKindBlockFunction;
