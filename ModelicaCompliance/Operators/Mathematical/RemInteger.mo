within ModelicaCompliance.Operators.Mathematical;

model RemInteger
  extends Icons.TestCase;

  Integer i;
equation
  r = rem(27, 6);
  assert(i == 3, "The rem value of variable i should be 3");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in mrem function is allowed and if both arguments are type integer the result shall have type integer.</html>"));
end RemInteger;
