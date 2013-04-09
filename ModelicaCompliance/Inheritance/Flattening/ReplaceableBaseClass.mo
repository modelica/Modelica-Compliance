within ModelicaCompliance.Inheritance.Flattening;

model ReplaceableBaseClass
  extends Icons.TestCase;

  replaceable model A
    Real x = 2;
  end A;

  extends A;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the extended base class is not allowed to be replaceable.</html>"));
end ReplaceableBaseClass;
