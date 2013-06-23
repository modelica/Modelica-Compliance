within ModelicaCompliance.Redeclare.Flattening;

model InheritanceDimensionClass
  extends Icons.TestCase;

  model A
    replaceable type MyReal = Real[3];
  end A;

  extends A(redeclare type MyReal = Real);
  MyReal x = {1, 2, 3};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the dimension of the original declaration
      is not inherited by the new declaration, so the redeclare should fail
      since the new type is not compatible with the old.</html>"));
end InheritanceDimensionClass;
