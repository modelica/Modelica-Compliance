within ModelicaCompliance.Inheritance.Restrictions;

model BaseClassKindBlockType
  extends Icons.TestCase;

  type Base = Real;

  block Derived
    extends Base;
  end Derived;

  Derived d = 1.0;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization block is not allowed to derive from type.</html>"));
end BaseClassKindBlockType;
