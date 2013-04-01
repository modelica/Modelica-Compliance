within ModelicaCompliance.Operators.Relational;

model LessThanEqual
  extends Icons.TestCase;

  constant Boolean b1 = 5 <= 7;
  constant Boolean b2 = 5 <= 5;
  constant Boolean b3 = 7 <= 5;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define less than or equal to ( < = ) relational operator within expressions.</html>"));
end LessThanEqual;
