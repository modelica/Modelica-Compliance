within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionMax1
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
  
  Real maximum;  
equation
  maximum = max([1, 2, 3; 4, 5, 6]); 
  assert(realAlmostEq(maximum, 6.0), "The largest element of array expression should be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function max is possible.</html>"));
end ArrayReductionMax1;
