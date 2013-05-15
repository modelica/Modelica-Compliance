within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSize1
  extends Icons.TestCase;
  

  parameter Real[4, 1, 6] x = fill(1., 4, 1, 6);
  parameter Real dim = ndims(x); 
equation
  assert(Util.compareReal(dim, 3.0), "The value of dim should be 3.0");  

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the ndims builtin function for array that returns the number of dimensions of array expression.</html>"));
end ArrayDimSize1;
