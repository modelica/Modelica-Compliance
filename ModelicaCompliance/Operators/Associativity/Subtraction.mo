within ModelicaCompliance.Operators.Associativity;

model Subtraction
  extends Icons.TestCase;

  constant Integer i = 5-3-2;
equation
  assert(i == 0, "The value of the scalar variable i should be 0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that subtraction expression operators are left associative.</html>"));
end Subtraction;
