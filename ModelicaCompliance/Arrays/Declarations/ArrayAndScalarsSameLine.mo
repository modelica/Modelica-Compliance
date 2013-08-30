within ModelicaCompliance.Arrays.Declarations;

model ArrayAndScalarsSameLine
  extends Icons.TestCase;

  Real a = 1,b[2] = {2,3} ;
  Real c[2] = {4, 5},d = 6;
equation
  assert(Util.compareReal(a, 1.0), "a was not set correctly.");
  assert(Util.compareReal(b[1], 2.0), "b[1] was not set correctly.");
  assert(Util.compareReal(b[2], 3.0), "b[2] was not set correctly.");
  assert(Util.compareReal(c[1], 4.0), "c[1] was not set correctly.");
  assert(Util.compareReal(c[2], 5.0), "c[2] was not set correctly.");
  assert(Util.compareReal(d, 6.0), "d was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays and scalars on the same line.</html>"));
end ArrayAndScalarsSameLine;
