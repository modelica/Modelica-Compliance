within ModelicaCompliance.Operators.Relational;

model GreaterThan
  extends Icons.TestCase;

  constant Boolean b1 = 7 > 5;
  constant Boolean b2 = 5 > 7;
equation
  assert(b1 == true, "The value of b1 should be true");
  assert(b2 == false, "The value of b2 should be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define greater than relational operator within expressions.</html>"));
end GreaterThan;
