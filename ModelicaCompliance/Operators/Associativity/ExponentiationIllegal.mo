within ModelicaCompliance.Operators.Associativity;

model ExponentiationIllegal
  extends Icons.TestCase;

  constant Real r = 2^3^5;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that Non-associative exponentiation is illegal in Modelica unless parenthesis is used.</html>"));
end ExponentiationIllegal;
