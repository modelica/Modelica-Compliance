within ModelicaCompliance.Arrays.Declarations;

model ArrayVariablesSingleDeclaration
  extends Icons.TestCase;

  Real[2,2] x = {{1, 2}, {3, 4}}, y = {{5, 6}, {7, 8}}; 
equation
  assert(Util.compareReal(x[1, 1], 1.0), "x[1, 1] was not set correctly.");
  assert(Util.compareReal(x[1, 2], 2.0), "x[1, 2] was not set correctly.");
  assert(Util.compareReal(x[2, 1], 3.0), "x[2, 1] was not set correctly.");
  assert(Util.compareReal(x[2, 2], 4.0), "x[2, 2] was not set correctly.");
  assert(Util.compareReal(y[1, 1], 5.0), "y[1, 1] was not set correctly.");
  assert(Util.compareReal(y[1, 2], 6.0), "y[1, 2] was not set correctly.");
  assert(Util.compareReal(y[2, 1], 7.0), "y[2, 1] was not set correctly.");
  assert(Util.compareReal(y[2, 2], 8.0), "y[2, 2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare array variables in a single declaration.</html>"));
end ArrayVariablesSingleDeclaration;
