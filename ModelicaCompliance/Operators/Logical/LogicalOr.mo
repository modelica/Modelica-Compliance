within ModelicaCompliance.Operators.Logical;

model LogicalOr
  extends Icons.TestCase;

  constant Boolean b1 = true or true;
  constant Boolean b2 = true or false;
  constant Boolean b3 = false or true;
  constant Boolean b4 = false or false;
equation
  assert(b1 == true, "The boolean value of b1 must be true");
  assert(b2 == true, "The boolean value of b2 must be true");
  assert(b3 == true, "The boolean value of b3 must be true");
  assert(b4 == false, "The boolean value of b4 must be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the logical operator or.</html>"));
end LogicalOr;
