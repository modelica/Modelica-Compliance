within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWAddition5
  extends Icons.TestCase;
  
  constant Integer intArray1[3] = {4, 8, 12};
  constant Integer intArray2[3] = {2, 4, 6};
  Integer intArray[3];
equation
  intArray = intArray1 .+ intArray2;
  assert(intArray[1] == 6, "The element of intArray[1] must be 6");
  assert(intArray[2] == 12, "The element of intArray[2] must be 12");
  assert(intArray[3] == 18, "The element of intArray[3] must be 18");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise addition of arrays is possible.</html>"));
end ArrayEWAddition5;
