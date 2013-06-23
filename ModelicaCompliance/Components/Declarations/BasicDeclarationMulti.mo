within ModelicaCompliance.Components.Declarations;

model BasicDeclarationMulti
  extends Icons.TestCase;

  Real x = 1.0;
  Real y = 2.0;
  Real z = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to declare multiple component.</html>"));
end BasicDeclarationMulti;
