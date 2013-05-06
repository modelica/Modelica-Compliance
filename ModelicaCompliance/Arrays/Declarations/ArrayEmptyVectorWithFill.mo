within ModelicaCompliance.Arrays.Declarations;

model ArrayEmptyVectorWithFill
  extends Icons.TestCase;

  Real f[0] = fill(1., 0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct empty vector with the fill function.</html>"));
end ArrayEmptyVectorWithFill;
