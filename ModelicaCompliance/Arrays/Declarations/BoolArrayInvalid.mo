within ModelicaCompliance.Arrays.Declarations;

model BoolArrayInvalid
  extends Icons.TestCase;

  type B = Boolean;
  Real arr[B];
equation
  arr[1] = 0.0;
  arr[2] = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.3", "10.1.1", "10.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it is not possible to index a boolean
      dimension using an integer index.</html>"));
end BoolArrayInvalid;
