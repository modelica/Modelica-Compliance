within ModelicaCompliance.Operators.Associativity;

model AdditionAndSubtraction
  extends Icons.TestCase;

  constant Integer i = 7 - 4 + 2;
equation
  assert(i == 5, "The value of the scalar variable i should be 5");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that addition and subtraction expression operators are left associative.</html>"));
end AdditionAndSubtraction;
