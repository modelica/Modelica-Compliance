within ModelicaCompliance.Arrays.Declarations;

model ArrayUnspecifiedDim
  extends Icons.TestCase;

  Real realArray[:] = {1,2,3,4};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays with unspecified dimensions but with binding equation.</html>"));
end ArrayUnspecifiedDim;
