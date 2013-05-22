within ModelicaCompliance.Arrays.Declarations;

model ArrayVariablesSingleDeclaration
  extends Icons.TestCase;

  Real[2,2] A, B; 
equation
  A = {{1, 2}, {3, 4}};
  B = {{5, 6}, {7, 8}};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare array variables in a single declaration.</html>"));
end ArrayVariablesSingleDeclaration;
