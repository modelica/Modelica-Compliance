within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayLogicicalAnd2
  extends Icons.TestCase;
   
  Boolean b1[:] = {false, true, false, true};
  Boolean b2[:] = {true, false, false, true};
  Boolean ab[:,:] = fill(b1, 2) and fill(b2, 2);
equation
  assert(ab[1, 1] == false, "The boolean value of ab[1, 1] must be false");
  assert(ab[1, 2] == false, "The boolean value of ab[1, 2] must be false");
  assert(ab[1, 3] == false, "The boolean value of ab[1, 3] must be false");
  assert(ab[1, 4] == true, "The boolean value of ab[1, 4] must be ture");
  assert(ab[2, 1] == false, "The boolean value of ab[2, 1] must be false");
  assert(ab[2, 2] == false, "The boolean value of ab[2, 2] must be false");
  assert(ab[2, 3] == false, "The boolean value of ab[2, 3] must be false");
  assert(ab[2, 4] == true, "The boolean value of ab[2, 4] must be true");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array logical operator and.</html>"));
end ArrayLogicicalAnd2;
