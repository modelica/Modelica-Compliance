within ModelicaCompliance.Operators.Precedence;

model ArithmeticPrecedence
  extends Icons.TestCase;
 
equation
  assert(Util.compareReal(3 + 2 * 4, 11), "* should have higher precedence than +");
  assert(Util.compareReal(10 - 2 * 4, 2), "* should have higher precedence than -");
  assert(Util.compareReal(3 + 2 / 2, 4), "/ should have higher precedence than +");
  assert(Util.compareReal(5 - 4 / 2, 3), "/ should have higher precedence than -");
  assert(Util.compareReal(-4 * 2, -8), "* should have higher precedence than -");
  assert(Util.compareReal(-4 / 2, -2), "/ should have higher precedence than -");
  assert(Util.compareReal(1 + 2^2, 5), "^ should have higher precedence than +");
  assert(Util.compareReal(5 - 2^2, 1), "^ should have higher precedence than -");
  assert(Util.compareReal(5 * 2^2, 20), "^ should have higher precedence than *");
  assert(Util.compareReal(8 / 2^2, 2), "^ should have higher precedence than /");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the precedence of the arithmetic operators.</html>"));
end ArithmeticPrecedence;
