within ModelicaCompliance.Operators.Mathematical;

model SignRealAndIntegerExpression
  extends Icons.TestCase;

  
  Integer i;
  Real r1, r2;
equation
  i = sign(65);
  r1 = sign(-4711.78);
  r2 = sign(0);
  assert(i == 1, "The value of variable i should be 1");
  assert(Util.compareReal(r1, -1.0), "The approximate value of the scalar variable r1 can not be considered as equal to 1.0");
  assert(Util.compareReal(r2, 0.0), "The approximate value of the scalar variable r2 can not be considered as equal to 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sign function is  allowed for real and integer expression.</html>"));
end SignRealAndIntegerExpression;
