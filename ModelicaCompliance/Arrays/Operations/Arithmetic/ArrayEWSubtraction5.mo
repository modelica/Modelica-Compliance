within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWSubtraction5
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

  constant Real realArray[2,2] = [5,6;7,8] .- [1,2;3,4];
equation
  assert(realAlmostEq(realArray[1,1], 4.0), "The element of realArray[1,1] must be 4.0");
  assert(realAlmostEq(realArray[1,2], 4.0), "The element of realArray[1,2] must be 4.0");
  assert(realAlmostEq(realArray[2,1], 4.0), "The element of realArray[2,1] must be 4.0");
  assert(realAlmostEq(realArray[2,2], 4.0), "The element of realArray[2,2] must be 4.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise subtraction of array is possible.</html>"));
end ArrayEWSubtraction5;
