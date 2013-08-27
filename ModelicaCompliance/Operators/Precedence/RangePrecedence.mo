within ModelicaCompliance.Operators.Precedence;

model RangePrecedence
  extends Icons.TestCase;
 
  Real x[2] = 1 + 3 - 1 : 3 ^ 2 / 3 : 2 * 8 / 2;
equation
  assert(Util.compareReal(x[1], 3.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], 6.0), "x[2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the precedence of the range operator.</html>"));
end RangePrecedence;
