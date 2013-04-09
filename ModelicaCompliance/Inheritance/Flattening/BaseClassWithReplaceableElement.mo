within ModelicaCompliance.Inheritance.Flattening;

model BaseClassWithReplaceableElement
  extends Icons.TestCase;

  model A
    replaceable Real x = 2;
  end A;

  extends A;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the extended base class is not allowed to contain
      replaceable elements.</html>"));
end BaseClassWithReplaceableElement;
