within ModelicaCompliance.Operators.Special;

model SemiLinear
  extends Icons.TestCase;
  
  Real x = 3.0;
  Real y = -2.5;
  Real z, w;
equation
  z = semiLinear(x, 2.0, -2.0);
  w = semiLinear(y, 2.0, -2.0);

  assert(Util.compareReal(z, 6.0), "z was not set correctly.");
  assert(Util.compareReal(w, 5.0), "w was not set correctly.");


  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the semiLinear operator.</html>"));
end SemiLinear;
