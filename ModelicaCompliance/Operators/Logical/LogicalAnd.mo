within ModelicaCompliance.Operators.Logical;

model LogicalAnd
  extends Icons.TestCase;

  constant Boolean b1 = true and true;
  constant Boolean b2 = true and false;
  constant Boolean b3 = false and true;
  constant Boolean b4 = false and false;
equation
  assert(b1 == true, "The boolean value of b1 must be true");
  assert(b2 == false, "The boolean value of b2 must be false");
  assert(b3 == false, "The boolean value of variable b3 must be false");
  assert(b4 == false, "The boolean value of variable b4 must be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the logical operator and.</html>"));
end LogicalAnd;
