within ModelicaCompliance.Operators.Mathematical;

model Cosh
  extends Icons.TestCase;

  Real r;
equation
  r = cosh(45);
  assert(Util.compareReal(r, 1.7467135528742547e+19), "The approximate value of the scalar variable r can not be considered as equal to 1.7467135528742547e+19");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in cosh function is allowed.</html>"));
end Cosh;
