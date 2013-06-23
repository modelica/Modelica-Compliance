within ModelicaCompliance.Arrays.Declarations;

model ArrayVariablesMultipleDeclarations
  extends Icons.TestCase;

  Real[2,2] A = {{1, 2}, {3, 4}}; 
  Real[2,2] B = {{5, 6}, {7, 8}}; 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare array variables in multiple declarations.</html>"));
end ArrayVariablesMultipleDeclarations;
