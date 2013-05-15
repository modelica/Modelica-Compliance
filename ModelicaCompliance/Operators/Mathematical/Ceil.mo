within ModelicaCompliance.Operators.Mathematical;

model Ceil
  extends Icons.TestCase;

  Real r;
equation
  r = ceil(4.5);
  
  assert(Util.compareReal(r, 5.0), "The approximate value of the scalar variable r can not be considered as equal to 5.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in Ceil function is possible and result and argument shall have type real.</html>"));
end Ceil;
