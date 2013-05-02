within ModelicaCompliance.Operators.Mathematical;

model ModInteger
  extends Icons.TestCase;

  Integer i;
equation
  i = mod(8, 3);
  assert(i == 2, "The mod value of variable i should be 2");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in mod function is allowed and if both arguments are type integer the result shall have type integer.</html>"));
end ModInteger;
