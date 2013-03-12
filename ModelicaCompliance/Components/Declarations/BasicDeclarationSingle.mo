within ModelicaCompliance.Components.Declarations;

model BasicDeclarationSingle
  extends Icons.TestCase;

  Real x = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the most basic of models with a single component work.</html>"));
end BasicDeclarationSingle;
