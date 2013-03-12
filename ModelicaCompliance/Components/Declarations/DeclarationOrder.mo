within ModelicaCompliance.Components.Declarations;

model DeclarationOrder
  extends Icons.TestCase;

  Real x = y;
  Real y = 2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that components can be used before they are declared.</html>"));
end DeclarationOrder;
