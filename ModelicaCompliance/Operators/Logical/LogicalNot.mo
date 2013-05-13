within ModelicaCompliance.Operators.Logical;

model LogicalNot
  extends Icons.TestCase;
  
  constant Boolean b1 = not false;
  constant Boolean b2 = not true;
equation
  assert(b1 == true, "The boolean value of b1 must be true");
  assert(b2 == false, "The boolean value of b2 must be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the unary logical operator not.</html>"));
end LogicalNot;
