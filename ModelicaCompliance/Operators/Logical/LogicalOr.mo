within ModelicaCompliance.Operators.Logical;

model LogicalOr
  extends Icons.TestCase;

  constant Boolean b1 = true or true;
  constant Boolean b2 = true or false;
  constant Boolean b3 = false or true;
  constant Boolean b4 = false or false;
equation
  assert(b1 == true, "The given condition for variable b1 should be true");
  assert(b2 == true, "The given condition for variable b2 should be true");
  assert(b3 == true, "The given condition for variable b3 should be true");
  assert(b4 == false, "The given condition for variable b4 should be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define or logical operator.</html>"));
end LogicalOr;
