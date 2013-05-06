within ModelicaCompliance.Arrays.Declarations;

model EmptyArrayConstructor
  extends Icons.TestCase;

  Real r[:] = {};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that empty array constructors are not allowed.</html>"));
end EmptyArrayConstructor;
