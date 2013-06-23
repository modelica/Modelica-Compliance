within ModelicaCompliance.Operators.Special;

model DerConstant
  extends Icons.TestCase;
  

  constant Real pa = 1; 
  Real a = der(pa);
  Real b = der(1.0);
  Real[1,2,1,2] c = der({{{{1.0,2.0}},{{3.0,4.0}}}});
equation
  assert(Util.compareReal(a, 0.0), "The result of a should be 0.0");
  assert(Util.compareReal(b, 0.0), "The result of b should be 0.0");
  assert(Util.compareReal(c[1,1,1,1], 0.0), "The result of c[1,1,1,1] should be 0.0");
  assert(Util.compareReal(c[1,1,1,2], 0.0), "The result of c[1,1,1,2] should be 0.0");
  assert(Util.compareReal(c[1,2,1,1], 0.0), "The result of c[1,2,1,1] should be 0.0");
  assert(Util.compareReal(c[1,2,1,2], 0.0), "The result of c[1,2,1,2] should be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the time derivative result for Real parameters and constants is a zero scalar or array of the same size as the variable.</html>"));
end DerConstant;
