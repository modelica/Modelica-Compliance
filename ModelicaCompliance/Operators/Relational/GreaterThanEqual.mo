within ModelicaCompliance.Operators.Relational;

model GreaterThanEqual
  extends Icons.TestCase;

  constant Boolean b1 = 7 >= 5;
  constant Boolean b2 = 7 >= 7;
  constant Boolean b3 = 5 >= 7;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define greater than or equal to ( > =) relational operator within expressions..</html>"));
end GreaterThanEqual;
