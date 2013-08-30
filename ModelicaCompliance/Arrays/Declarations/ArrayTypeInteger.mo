within ModelicaCompliance.Arrays.Declarations;

model ArrayTypeInteger
  extends Icons.TestCase;

  Integer x[5] = {1,2,3,4,5};
  Integer y[3] = 1:3;
equation
  assert(x[1] == 1, "x[1] was not set correctly.");
  assert(x[2] == 2, "x[2] was not set correctly.");
  assert(x[3] == 3, "x[3] was not set correctly.");
  assert(x[4] == 4, "x[4] was not set correctly.");
  assert(x[5] == 5, "x[5] was not set correctly.");
  assert(y[1] == 1, "y[1] was not set correctly.");
  assert(y[2] == 2, "y[2] was not set correctly.");
  assert(y[3] == 3, "y[3] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays of Integer type.</html>"));
end ArrayTypeInteger;
