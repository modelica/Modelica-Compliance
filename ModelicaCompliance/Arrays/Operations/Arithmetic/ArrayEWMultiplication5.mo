within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWMultiplication5
  extends Icons.TestCase;
    
  constant Integer intArray1[3] = {4, 8, 12};
  constant Integer intArray2[3] = {2, 4, 6};
  Integer intArray[3];
equation
  intArray = intArray1 .* intArray2;
  assert(intArray[1] == 8, "The element of intArray[1] must be 8");
  assert(intArray[2] == 32, "The element of intArray[2] must be 32");
  assert(intArray[3] == 72, "The element of intArray[3] must be 72");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise multiplication two arrays of type integer is possible.</html>"));
end ArrayEWMultiplication5;
