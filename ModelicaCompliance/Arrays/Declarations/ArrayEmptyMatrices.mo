within ModelicaCompliance.Arrays.Declarations;

model ArrayEmptyMatrices
  extends Icons.TestCase;

  Real[0, 3] A; 
  Real B[5, 0], C[0, 0]; 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays with size of zero dimension.</html>"));
end ArrayEmptyMatrices;
