within ModelicaCompliance.Redeclare.Flattening;

model InheritanceDimensionComp
  extends Icons.TestCase;

  model A
    replaceable parameter Integer x[3];
  end A;

  extends A(redeclare Integer x = {1, 2, 3});
equation
  assert(x[2] == 2, "x was not redeclared!"); 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the dimension of the original declaration
      is inherited by the new declaration.</html>"));
end InheritanceDimensionComp;
