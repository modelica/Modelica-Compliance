within ModelicaCompliance.Operators.Mathematical;

model Acos
  extends Icons.TestCase;

  Real r;
equation
  r = acos(0.5);
  assert(Util.compareReal(r, 1.0471975511965979), "The approximate value of the scalar variable r can not be considered as equal to 1.0471975511965979");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in inverse cosine function is allowed.</html>"));
end Acos;
