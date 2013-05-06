within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSize2
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

  parameter Real[4, 1, 6] x = fill(1., 4, 1, 6);
  parameter Real dimsize = size(x, 1);
equation
  assert(realAlmostEq(dimsize, 4.0), "The size of dimensions of array expression x should be 4.0");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the size builtin function for array that returns the size of dimension of array expression.</html>"));
end ArrayDimSize2;
