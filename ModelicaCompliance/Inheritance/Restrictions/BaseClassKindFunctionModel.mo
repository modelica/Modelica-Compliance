within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindFunctionModel
  extends Icons.TestCase;

  model Base
    Real y = 6.0;
  end Base;

  function Derived
    extends Base;
  algorithm
  end Derived;

  Real x = Derived(1.0);
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization function is not allowed to derive from model.</html>"));
end BaseClassKindFunctionModel;
