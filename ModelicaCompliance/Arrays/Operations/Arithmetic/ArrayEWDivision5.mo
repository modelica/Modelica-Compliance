within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision5
  extends Icons.TestCase;
  

  constant Integer intArray1[3] = {4, 8, 12};
  constant Integer intArray2[3] = {2, 4, 6};
  Integer intArray[3];
equation
  intArray = intArray1 ./ intArray2;
  assert(Util.compareReal(intArray[1], 2.0), "The element of intArray[1] must be 2.0");
  assert(Util.compareReal(intArray[2], 2.0), "The element of intArray[2] must be 2.0");
  assert(Util.compareReal(intArray[3], 2.0), "The element of intArray[3] must be 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests elementwise array division</html>"));
end ArrayEWDivision5;
