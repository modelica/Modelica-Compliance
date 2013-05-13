within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayLogicicalOr2
  extends Icons.TestCase;
    
  Boolean b1[:] = {false, true, false, true};
  Boolean b2[:] = {true, false, false, true};
  Boolean ob[:,:] = fill(b1, 2) or fill(b2, 2);
equation
  assert(ob[1, 1] == true, "The boolean value of ob[1, 1] must be true");
  assert(ob[1, 2] == true, "The boolean value of ob[1, 2] must be true");
  assert(ob[1, 3] == false, "The boolean value of ob[1, 3] must be false");
  assert(ob[1, 4] == true, "The boolean value of ob[1, 4] must be true");
  assert(ob[2, 1] == true, "The boolean value of ob[2, 1] must be true");
  assert(ob[2, 2] == true, "The boolean value of ob[2, 2] must be true");
  assert(ob[2, 3] == false, "The boolean value of ob[2, 3] must be false");
  assert(ob[2, 4] == true, "The boolean value of ob[2, 4] must be true");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array logical operator or.</html>"));
end ArrayLogicicalOr2;
