within ModelicaCompliance.Classes.Declarations.Short;

model ArrayType
  extends Icons.TestCase;

  type Real3 = Real[3];
  Real3 x = {1, 2, 3};
equation
  assert(Util.compareReal(x[1], 1.0), "x[1] was not given the correct value.");
  assert(Util.compareReal(x[2], 2.0), "x[2] was not given the correct value.");
  assert(Util.compareReal(x[3], 3.0), "x[3] was not given the correct value.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare and use an array type.</html>"));
end ArrayType;
