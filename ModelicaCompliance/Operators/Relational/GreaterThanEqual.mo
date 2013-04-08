within ModelicaCompliance.Operators.Relational;

model GreaterThanEqual
  extends Icons.TestCase;

  constant Boolean b1 = 7 >= 5;
  constant Boolean b2 = 7 >= 7;
  constant Boolean b3 = 5 >= 7;
equation
  assert(b1 == true, "The given condition for variable b1 should be true");
  assert(b2 == true, "The given condition for variable b2 should be true");
  assert(b3 == false, "The given condition for variable b3 should be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define greater than or equal to relational operator within expressions..</html>"));
end GreaterThanEqual;
