within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayLogicicalNot1
  extends Icons.TestCase;
   
  Boolean b[:] = {false, true};
  Boolean nb[:] = not b;
equation
  assert(nb[1] == true, "The boolean value of nb[1] must be true");
  assert(nb[2] == false, "The boolean value of nb[2] must be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array logical operator not.</html>"));
end ArrayLogicicalNot1;
