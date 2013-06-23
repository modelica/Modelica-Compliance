within ModelicaCompliance.Inheritance.Flattening;

model BaseClassWithReplaceableElement
  extends Icons.TestCase;

  model A
    replaceable Real x = 2;
  end A;

  extends A;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1.4"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that an extended base class is allowed to contain
      replaceable elements.</html>"));
end BaseClassWithReplaceableElement;
