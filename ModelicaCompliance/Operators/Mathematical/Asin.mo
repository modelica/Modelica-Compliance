within ModelicaCompliance.Operators.Mathematical;

model Asin
  extends Icons.TestCase;

  Real r;
equation
  r = asin(0.5);
  
  assert(Util.compareReal(r, 0.5235987755982989), "The approximate value of the scalar variable r can not be considered as equal to 0.5235987755982989");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in inverse sine function is possible.</html>"));
end Asin;
