within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWMultiplicationIncorrect1
  extends Icons.TestCase;
  
  Real[2] r;
equation
  r = {2,3}.*{4,5,4};
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise multiplication of two vectors with different size is not possible.</html>"));
end ArrayEWMultiplicationIncorrect1;
