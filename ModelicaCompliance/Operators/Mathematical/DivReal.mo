within ModelicaCompliance.Operators.Mathematical;

model DivReal
  extends Icons.TestCase;

  
  Real r;
equation
  r = div(45, 4.0);
  
  assert(Util.compareReal(r, 11.0), "The approximate value of the scalar variable r can not be considered as equal to 11.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in div function is possible and if either of the arguments is type real the result shall have type real.</html>"));
end DivReal;
