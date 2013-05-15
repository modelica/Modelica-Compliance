within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision2
  extends Icons.TestCase;
  
  constant Real realArray[2,2] = 12 ./[1,2;3,4];
equation
  assert(Util.compareReal(realArray[1,1], 12.0), "The element of realArray[1,1] must be 12.0");
  assert(Util.compareReal(realArray[1,2], 6.0), "The element of realArray[1,2] must be 6.0");
  assert(Util.compareReal(realArray[2,1], 4.0), "The element of realArray[2,1] must be 4.0");
  assert(Util.compareReal(realArray[2,2], 3.0), "The element of realArray[2,2] must be 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>that elementwise division of  numeric scalar by array is possible.</html>"));
end ArrayEWDivision2;
