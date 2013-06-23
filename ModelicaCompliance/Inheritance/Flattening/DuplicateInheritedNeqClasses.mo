within ModelicaCompliance.Inheritance.Flattening;

model DuplicateInheritedNeqClasses
  extends Icons.TestCase;

  model Base
    model A
      Real x = 2;
    end A;
  end Base;

  model A
    Real x = 3;
  end A;

  extends Base;
  A a;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's not allowed to have duplicate classes due to
      inheritance if they are not exactly identical.</html>"));
end DuplicateInheritedNeqClasses;
