within ModelicaCompliance.Operators.Mathematical;

model AbsIntegerAndRealExpression
  extends Icons.TestCase;

  Real r1, r2;
  Integer i1, i2;
equation  
  r1 = abs(100.78);
  r2 = abs(200-100);
  i1 = abs(-100);
  i2 = abs(0);
  
  assert(Util.compareReal(r1, 100.78), "The value of r1 should be 100.78");
  assert(Util.compareReal(r2, 100.00), "The value of r2 should be 100.00");
  assert(i1 == 100, "The value of i1 should be 100");
  assert(i2 == 0, "The value of i2 should be 0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in abs operator is allowed for integer and real expressions.</html>"));
end AbsIntegerAndRealExpression;
