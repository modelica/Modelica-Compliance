within ModelicaCompliance.Arrays.Declarations;

model ArrayUnspecifiedDim
  extends Icons.TestCase;

  Real realArray[:] = {1,2,3,4};
equation
  assert(Util.compareReal(realArray[1], 1.0), "realArray[1] was not set correctly.");
  assert(Util.compareReal(realArray[2], 2.0), "realArray[2] was not set correctly.");
  assert(Util.compareReal(realArray[3], 3.0), "realArray[3] was not set correctly.");
  assert(Util.compareReal(realArray[4], 4.0), "realArray[4] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays with unspecified dimensions but with binding equation.</html>"));
end ArrayUnspecifiedDim;
