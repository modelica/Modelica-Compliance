within ModelicaCompliance.Arrays.Declarations;

model ArrayVariablesMultipleDeclarations
  extends Icons.TestCase;

  Real[2,2] A; 
  Real[2,2] B; 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare array variables in multiple declarations.</html>"));
end ArrayVariablesMultipleDeclarations;
