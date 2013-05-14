within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWAddition6
  extends Icons.TestCase;
  

  constant Real realArray[2,2] = [1,2;3,4] .+ [5,6;7,8];
equation
  assert(Util.compareReal(realArray[1,1], 6.0), "The element of realArray[1,1] must be 6.0");
  assert(Util.compareReal(realArray[1,2], 8.0), "The element of realArray[1,2] must be 8.0");
  assert(Util.compareReal(realArray[2,1], 10.0), "The element of realArray[2,1] must be 10.0");
  assert(Util.compareReal(realArray[2,2], 12.0), "The element of realArray[2,2] must be 12.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array addition</html>"));
end ArrayEWAddition6;
