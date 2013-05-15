within ModelicaCompliance.Operators.Mathematical;

model Sinh
  extends Icons.TestCase;

  
  Real r;
equation
  r = sinh(45);
  
  assert(Util.compareReal(r, 1.7467135528742547e+19), "The approximate value of the scalar variable r can not be considered as equal to 1.7467135528742547e+19");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sinh function is posssible.</html>"));
end Sinh;
