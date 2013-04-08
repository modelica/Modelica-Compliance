within ModelicaCompliance.Operators.Logical;

model LogicalNot
  extends Icons.TestCase;
  
  constant Boolean b1 = not false;
  constant Boolean b2 = not true;
equation
  assert(b1 == true, "The given condition for variable b1 should be true");
  assert(b2 == false, "The given condition for variable b2 should be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define not unary logical operator.</html>"));
end LogicalNot;
