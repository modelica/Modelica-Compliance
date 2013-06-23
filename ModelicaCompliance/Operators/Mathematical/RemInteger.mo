within ModelicaCompliance.Operators.Mathematical;

model RemInteger
  extends Icons.TestCase;

  Integer i;
equation
  i = rem(27, 6);
  
  assert(i == 3, "The value of i should be 3");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in rem function is allowed and if both arguments are type integer the result shall have type integer.</html>"));
end RemInteger;
