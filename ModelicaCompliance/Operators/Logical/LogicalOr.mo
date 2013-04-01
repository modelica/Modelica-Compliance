within ModelicaCompliance.Operators.Logical;

model LogicalOr
  extends Icons.TestCase;

  constant Boolean b1 = true or true;
  constant Boolean b2 = true or false;
  constant Boolean b3 = false or true;
  constant Boolean b4 = false or false;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define or logical operator.</html>"));
end LogicalOr;
