within ModelicaCompliance.Operators.Relational;

model LessThan
  extends Icons.TestCase;

  constant Boolean b1 = 5 < 7;
  constant Boolean b2 = 7 < 5;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define less than ( < ) relational operator within expressions..</html>"));
end LessThan;
