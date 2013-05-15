within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWSubtraction5
  extends Icons.TestCase;
  
  constant Real realArray[2,2] = [5,6;7,8] .- [1,2;3,4];
equation
  assert(Util.compareReal(realArray[1,1], 4.0), "The element of realArray[1,1] must be 4.0");
  assert(Util.compareReal(realArray[1,2], 4.0), "The element of realArray[1,2] must be 4.0");
  assert(Util.compareReal(realArray[2,1], 4.0), "The element of realArray[2,1] must be 4.0");
  assert(Util.compareReal(realArray[2,2], 4.0), "The element of realArray[2,2] must be 4.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise subtraction of array is possible.</html>"));
end ArrayEWSubtraction5;
