within ModelicaCompliance.Operators.Mathematical;

model ModReal
  extends Icons.TestCase;

  
  Real r;
equation
  r = mod(8, 3.0);
  
  assert(Util.compareReal(r, 2.0), "The approximate value of the scalar variable r can not be considered as equal to 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in mod function is possible and if either of the arguments is type real the result shall have type real.</html>"));
end ModReal;
