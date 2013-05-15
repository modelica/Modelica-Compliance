within ModelicaCompliance.Operators.Mathematical;

model Tanh
  extends Icons.TestCase;

  
  Real r;
equation
  r = tanh(45);
  
  assert(Util.compareReal(r, 1.0), "The approximate value of the scalar variable r can not be considered as equal to 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in tanh function is allowed.</html>"));
end Tanh;
