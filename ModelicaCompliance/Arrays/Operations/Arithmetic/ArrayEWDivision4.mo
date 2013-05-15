within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision4
  extends Icons.TestCase;
  
  constant Real realArray[2,2] = [5,6;7,8] ./ [1,2;3,4];
equation
  assert(Util.compareReal(realArray[1,1], 5.0), "The element of realArray[1,1] must be 2.0");
  assert(Util.compareReal(realArray[1,2], 3.0), "The element of realArray[1,2] must be 3.0");
  assert(Util.compareReal(realArray[2,1], 2.3333333333333335), "The element of realArray[2,1] must be 2.3333333333333335 approximately");
  assert(Util.compareReal(realArray[2,2], 2.0), "The element of realArray[2,2] must be 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise division of numeric array by array is possible</html>"));
end ArrayEWDivision4;
