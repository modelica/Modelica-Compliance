within ModelicaCompliance.Operators.Relational;

model GreaterThan
  extends Icons.TestCase;

  constant Boolean b1 = 7 > 5;
  constant Boolean b2 = 5 > 7;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define greater than( > ) relational operator within expressions..</html>"));
end GreaterThan;
