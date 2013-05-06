within ModelicaCompliance.Arrays.Declarations;

model ArrayDeclarationTypeDim2
  extends Icons.TestCase;

  Real[2] realArray;
equation
  realArray[1] = 4;
  realArray[2] = 5;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays of the form Type[dim] identifier.</html>"));
end ArrayDeclarationTypeDim2;
