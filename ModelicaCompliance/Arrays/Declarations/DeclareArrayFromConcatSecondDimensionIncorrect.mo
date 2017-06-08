within ModelicaCompliance.Arrays.Declarations;

model DeclareArrayFromConcatSecondDimensionIncorrect
  extends Icons.TestCase;

  Real x[:,1]=[2,3];

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.4.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not possible to declare arrays of partial unspecified dimensions with Array Concatenation along Second Dimension.</html>"));
end DeclareArrayFromConcatSecondDimensionIncorrect;
