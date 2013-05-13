within ModelicaCompliance.Arrays.Operations.Logical;

model ArrayLogicalAnd1
  extends Icons.TestCase;
   
  Boolean b1[:] = {false, true, false, true};
  Boolean b2[:] = {true, false, false, true};
  Boolean ab[:] = b1 and b2;
equation
  assert(ab[1] == false, "The boolean value of ab[1] must be false");
  assert(ab[2] == false, "The boolean value of ab[2] must be false");
  assert(ab[3] == false, "The boolean value of ab[3] must be false");
  assert(ab[4] == true, "The boolean value of ab[4] must be true");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array logical operator and.</html>"));
end ArrayLogicalAnd1;
