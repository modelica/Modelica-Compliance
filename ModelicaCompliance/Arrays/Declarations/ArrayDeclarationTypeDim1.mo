within ModelicaCompliance.Arrays.Declarations;

model ArrayDeclarationTypeDim1
  extends Icons.TestCase;

  Real realArray[2] = {4,5};
equation
  assert(Util.compareReal(realArray[1], 4.0), "realArray[1] was not set correctly.");
  assert(Util.compareReal(realArray[2], 5.0), "realArray[2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays by placing the dimension descriptors after the variable name.</html>"));
end ArrayDeclarationTypeDim1;
