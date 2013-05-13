within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionProduct1
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
  
  Real  prod; 
equation
  prod    = product({3.14, 2, 2}); 
  assert(realAlmostEq(prod, 12.56), "The scalar product of all the elements of array expression should be 12.56");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function product is possible.</html>"));
end ArrayReductionProduct1;
