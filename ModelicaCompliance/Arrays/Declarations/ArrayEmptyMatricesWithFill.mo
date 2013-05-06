within ModelicaCompliance.Arrays.Declarations;

model ArrayEmptyMatricesWithFill
  extends Icons.TestCase;

  Real A[:, :] = fill(0.0, 0, 1); 
  Boolean B[:, :, :] = fill (false, 0, 1, 0); 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct empty matrices with the fill function.</html>"));
end ArrayEmptyMatricesWithFill;
