within ModelicaCompliance.Arrays.Declarations;

model ArrayDeclarationMixedForms
  extends Icons.TestCase;

  Real[3,2] x[4,5] = ones(4, 5, 3, 2); // x has type Real[4,5,3,2]

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays by mixing the two decalration modelica forms.</html>"));
end ArrayDeclarationMixedForms;
