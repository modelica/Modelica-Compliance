within ModelicaCompliance.Arrays.Declarations;

model ArrayEmptyVector
  extends Icons.TestCase;

  Real x[0];
  Real[0] y;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays with size of zero dimension.</html>"));
end ArrayEmptyVector;
