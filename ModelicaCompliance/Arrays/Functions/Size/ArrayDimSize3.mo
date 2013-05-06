within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSize3
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
  parameter Real specsize[3] = size(x);  
equation
  assert(realAlmostEq(specsize[1], 4.0), "The vector length of specsize[1] should be 4.0"); 
  assert(realAlmostEq(specsize[2], 1.0), "The vector length of specsize[2] should be 1.0"); 
  assert(realAlmostEq(specsize[3], 6.0), "The vector length of specsize[3] should be 6.0"); 
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the size builtin function for array that returns a vector length containing the dimension sizes of array.</html>"));
end ArrayDimSize3;
