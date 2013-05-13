within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWSubtraction6
  extends Icons.TestCase;
  
  constant Integer intArray1[3] = {4, 8, 12};
  constant Integer intArray2[3] = {2, 4, 6};
  Integer intArray[3];
equation
  intArray = intArray1 .- intArray2;
  assert(intArray[1] == 2, "The element of intArray[1] must be 2");
  assert(intArray[2] == 4, "The element of intArray[2] must be 4");
  assert(intArray[3] == 6, "The element of intArray[3] must be 6");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests elementwise array subtraction</html>"));
end ArrayEWSubtraction6;
