within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionSum3
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

  Real summ = sum(i^2 for i in {1, 3, 7, 6});  
equation
  assert(realAlmostEq(summ, 95.0), "The value of sum must be 95.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function sum is possible.</html>"));
end ArrayReductionSum3;
