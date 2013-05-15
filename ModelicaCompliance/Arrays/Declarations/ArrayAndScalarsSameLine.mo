within ModelicaCompliance.Arrays.Declarations;

model ArrayAndScalarsSameLine
  extends Icons.TestCase;

  Real a,b[2];
  Real c[2],d;
equation
  a = 1;
  b = {2,3};
  c = {4, 5};
  d = 6;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays and scalars on the same line.</html>"));
end ArrayAndScalarsSameLine;
