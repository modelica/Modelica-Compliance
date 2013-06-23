within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSizeIncorrectArgument3
  extends Icons.TestCase;

  Real r = 5.0;
  Real s = size(r);
   
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that size of scalars is not allowed.</html>"));
end ArrayDimSizeIncorrectArgument3;
