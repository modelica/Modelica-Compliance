within ModelicaCompliance.Arrays.Declarations;

model ArrayUnspecifiedDimIncorrect
  extends Icons.TestCase;

  Real r[:];

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not possible to declare arrays of unspecified dimensions with out binding equation.</html>"));
end ArrayUnspecifiedDimIncorrect;
