within ModelicaCompliance.Components.Declarations;

model DoubleDeclarationComps
  extends Icons.TestCase;

  Real x = 1.0;
  Real x = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that double declaration of components is forbidden.</html>"));
end DoubleDeclarationComps;
