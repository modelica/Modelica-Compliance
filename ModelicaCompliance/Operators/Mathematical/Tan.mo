within ModelicaCompliance.Operators.Mathematical;

model Tan
  extends Icons.TestCase;

  
  Real r;
equation
  r = tan(45);
  
  assert(Util.compareReal(r, 1.6197751905438615), "The approximate value of the scalar variable r can not be considered as equal to 1.6197751905438615");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in tan function is allowed.</html>"));
end Tan;
