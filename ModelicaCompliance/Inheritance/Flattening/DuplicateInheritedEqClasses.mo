within ModelicaCompliance.Inheritance.Flattening;

model DuplicateInheritedEqClasses
  extends Icons.TestCase;

  model Base
    model A
      Real x = 2;
    end A;
  end Base;

  model A
    Real x = 2;
  end A;

  extends Base;
  A a;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's allowed to have duplicate classes due to
      inheritance as long as they are exactly identical.</html>"));
end DuplicateInheritedEqClasses;
