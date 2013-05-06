within ModelicaCompliance.Arrays.Declarations;

model ArraysofArraysRealParameter
  extends Icons.TestCase;

  type T1 = Real[3];
  type T2 = T1[2];
  parameter T2 x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays of arrays type Real parameter.</html>"));
end ArraysofArraysRealParameter;
