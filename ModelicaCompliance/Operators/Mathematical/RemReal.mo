within ModelicaCompliance.Operators.Mathematical;

model RemReal
  extends Icons.TestCase;

  
  Real r;
equation
  r = rem(27, 6.0);
  
  assert(Util.compareReal(r, 3.0), "The approximate value of the scalar variable r can not be considered as equal to 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in rem function is allowed and if either of the arguments is type real the result shall have type real.</html>"));
end RemReal;
