within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionMin
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
  
  Real minimum;
equation
  minimum = min({1, -1, 7}); 
  assert(realAlmostEq(minimum, -1.0), "The smallest element of the array expression should be -1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the array reduction function min that returns the smallest element of array expression.</html>"));
end ArrayReductionMin;
