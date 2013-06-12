within ModelicaCompliance.Arrays.Declarations;

model ArrayTypeIntegerParameter
  extends Icons.TestCase;

  parameter Integer x[2,3] = {{1, 2, 3}, {4, 5, 6}};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare array of type Integer parameter.</html>"));
end ArrayTypeIntegerParameter;
