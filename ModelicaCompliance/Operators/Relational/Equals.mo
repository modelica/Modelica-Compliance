within ModelicaCompliance.Operators.Relational;

model Equals
  extends Icons.TestCase;

  constant Boolean b1 = 5 == 5;
  constant Boolean b2 = 5 == 7;
equation
  assert(b1 == true, "The value of b1 should be true");
  assert(b2 == false, "The value of b2 should be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define equality relational operator within expressions.</html>"));
end Equals;
