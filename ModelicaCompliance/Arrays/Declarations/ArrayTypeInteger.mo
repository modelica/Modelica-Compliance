within ModelicaCompliance.Arrays.Declarations;

model ArrayTypeInteger
  extends Icons.TestCase;

  Integer x[5] = {1,2,3,4,5};
  Integer y[3] = 1:3;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays of Integer type.</html>"));
end ArrayTypeInteger;
