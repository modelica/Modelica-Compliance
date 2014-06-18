within ModelicaCompliance.Arrays.Declarations;

model BoolArrayInvalid
  extends Icons.TestCase;

  type B = Boolean;
  Real arr1[B];
equation
  arr[1] = true;
  arr[2] = false;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.3", "10.1.1", "10.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it is not possible to index a boolean
      dimension using an integer index.</html>"));
end BoolArrayInvalid;
