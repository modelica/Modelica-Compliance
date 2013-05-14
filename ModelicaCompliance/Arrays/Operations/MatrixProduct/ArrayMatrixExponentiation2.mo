within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixExponentiation2
  extends Icons.TestCase;
  
  
  Real e[2, 2];
equation
  e = [1, 2; 1, 2] ^ 2;
  assert(Util.compareReal(e[1, 1], 3.0), "The element of e[1, 1] must be 3.0");
  assert(Util.compareReal(e[1, 2], 6.0), "The element of e[1, 2] must be 6.0");
  assert(Util.compareReal(e[2, 1], 3.0), "The element of e[2, 1] must be 3.0");
  assert(Util.compareReal(e[2, 2], 6.0), "The element of e[2, 2] must be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix exponentiation of arrays with numeric elements is possible.</html>"));
end ArrayMatrixExponentiation2;
