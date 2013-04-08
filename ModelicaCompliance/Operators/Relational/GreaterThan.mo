within ModelicaCompliance.Operators.Relational;

model GreaterThan
  extends Icons.TestCase;

  constant Boolean b1 = 7 > 5;
  constant Boolean b2 = 5 > 7;
equation
  assert(b1 == true, "The given condition for variable b1 should be true");
  assert(b2 == false, "The given condition for variable b2 should be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define greater than relational operator within expressions..</html>"));
end GreaterThan;
