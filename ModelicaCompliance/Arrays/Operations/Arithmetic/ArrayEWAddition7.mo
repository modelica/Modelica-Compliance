within ModelicaCompliance.Arrays.Operations.Arithmetic;
model ArrayEWAddition7
  extends Icons.TestCase;

  constant Real realArray[0,2] = ones(0,2) .+ ones(0,2);
equation
  assert(size(realArray,1)==0, "Should be empty");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.2", "10.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array addition</html>"));
end ArrayEWAddition7;
