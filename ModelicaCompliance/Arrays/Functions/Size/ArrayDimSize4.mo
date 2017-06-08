within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSize4
  extends Icons.TestCase;
  

  parameter Real r = 5;
  parameter Real nDims[0] = size(r); 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the size(A) function accept scalars and return an empty vector.</html>"));
end ArrayDimSize4;
