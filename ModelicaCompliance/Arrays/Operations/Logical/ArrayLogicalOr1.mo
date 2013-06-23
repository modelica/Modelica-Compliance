within ModelicaCompliance.Arrays.Operations.Logical;

model ArrayLogicalOr1
  extends Icons.TestCase;
   
  Boolean b1[:] = {false, true, false, true};
  Boolean b2[:] = {true, false, false, true};
  Boolean ob[:] = b1 or b2;
equation
  assert(ob[1] == true, "The boolean value of ob[1] must be true");
  assert(ob[2] == true, "The boolean value of ob[2] must be true");
  assert(ob[3] == false, "The boolean value of ob[3] must be false");
  assert(ob[4] == true, "The boolean value of ob[4] must be true");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.11"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array logical operator or.</html>"));
end ArrayLogicalOr1;
