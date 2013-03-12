within ModelicaCompliance.Components.Declarations;

model DoubleDeclarationMixed
  extends Icons.TestCase;

  Real x = 1.0;
  class x end x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that double declaration of mixed elements is forbidden.</html>"));
end DoubleDeclarationMixed;
