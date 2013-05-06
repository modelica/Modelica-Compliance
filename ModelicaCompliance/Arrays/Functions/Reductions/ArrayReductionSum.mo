within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionSum
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
  
  Real summ;  
equation
  summ    = sum({{1, 2, 3}, {4, 5, 6}});
  assert(realAlmostEq(summ, 21.0), "The scalar sum of all the eleemnts of array expression should be 21.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the array reduction function sum that returns the scalar sum of all the elements of array expression.</html>"));
end ArrayReductionSum;
