within ModelicaCompliance.Arrays.Declarations;

model ArrayWithNegativeDims
  extends Icons.TestCase;

  Real negativeDim[-2];

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not possible to declare arrays dimension with negative parameter expression.</html>"));
end ArrayWithNegativeDims;
