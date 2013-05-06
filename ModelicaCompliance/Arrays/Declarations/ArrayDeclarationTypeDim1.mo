within ModelicaCompliance.Arrays.Declarations;

model ArrayDeclarationTypeDim1
  extends Icons.TestCase;

  Real realArray[2];
equation
  realArray[1] = 4;
  realArray[2] = 5;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays by placing the dimension descriptors after the variable name.</html>"));
end ArrayDeclarationTypeDim1;
