within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindBlockType
  extends Icons.TestCase;

  type Base = Real;

  block Derived
    extends Base;
  end Derived;

  Derived d;
equation
  annotation (
    __ModelicaAssocication(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization block is not allowed to derive from type.</html>"));
end BaseClassKindBlockType;
