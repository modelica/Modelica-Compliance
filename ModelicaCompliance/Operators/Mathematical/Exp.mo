within ModelicaCompliance.Operators.Mathematical;

model Exp
  extends Icons.TestCase;

  
  Real r;
equation
  r = exp(45);
  
  assert(Util.compareReal(r, 3.4934271057485095e+19), "The approximate value of the scalar variable r can not be considered as equal to 3.4934271057485095e+19");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in exp function is possible.</html>"));
end Exp;
