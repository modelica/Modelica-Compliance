within ModelicaCompliance.Classes.Declarations.Short;

model ArrayTypeArray
  extends Icons.TestCase;

  type Real3 = Real[3];
  Real3 x[2] = {{1, 2, 3}, {4, 5, 6}};
equation
  assert(Util.compareReal(x[1, 1], 1.0), "x[1, 1] was not given the correct value.");
  assert(Util.compareReal(x[1, 2], 2.0), "x[1, 2] was not given the correct value.");
  assert(Util.compareReal(x[1, 3], 3.0), "x[1, 3] was not given the correct value.");
  assert(Util.compareReal(x[2, 1], 4.0), "x[2, 1] was not given the correct value.");
  assert(Util.compareReal(x[2, 2], 5.0), "x[2, 2] was not given the correct value.");
  assert(Util.compareReal(x[2, 3], 6.0), "x[2, 3] was not given the correct value.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it's possible to use an array type in combination
      with dimensions on a component.</html>"));
end ArrayTypeArray;
