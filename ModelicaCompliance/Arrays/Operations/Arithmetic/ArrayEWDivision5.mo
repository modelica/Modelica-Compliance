within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision5
  extends Icons.TestCase;
  
function realAlmostEq "Compare an approximation of floating-point numbers and check if they can be considered equal or not."
  input Real a,b;
  input Real absTol := 1e-10;
  input Real relTol := 1e-5;
  output Boolean almostEq;
protected
  Real diff;
algorithm
  diff := abs(a-b);
  almostEq := diff < absTol or diff <= max(abs(b),abs(a)) * relTol;
end realAlmostEq;

  constant Integer intArray1[3] = {4, 8, 12};
  constant Integer intArray2[3] = {2, 4, 6};
  Integer intArray[3];
equation
  intArray = intArray1 ./ intArray2;
  assert(realAlmostEq(intArray[1], 2.0), "The element of intArray[1] must be 2.0");
  assert(realAlmostEq(intArray[2], 2.0), "The element of intArray[2] must be 2.0");
  assert(realAlmostEq(intArray[3], 2.0), "The element of intArray[3] must be 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests elementwise array division</html>"));
end ArrayEWDivision5;
