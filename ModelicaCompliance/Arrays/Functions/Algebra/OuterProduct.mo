within ModelicaCompliance.Arrays.Functions.Algebra;

model OuterProduct
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
  
  Real out[2, 2] = outerProduct({2, 1}, {3, 2});
equation
  assert(realAlmostEq(out[1,1], 6.0), "The element of out[1,1] should be 6.0");
  assert(realAlmostEq(out[1,2], 4.0), "The element of out[1,2] should be 4.0");
  assert(realAlmostEq(out[2,1], 3.0), "The element of out[2,1] should be 3.0");
  assert(realAlmostEq(out[2,2], 2.0), "The element of out[2,2] should be 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the outer product of two vectors 
		 by using the builtin outerProduct function.</html>"));
end OuterProduct;
