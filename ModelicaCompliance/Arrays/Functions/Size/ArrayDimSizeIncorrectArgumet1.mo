within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSizeIncorrectArgument1
  extends Icons.TestCase;

  parameter Real[4, 1, 6] x = fill(1., 4, 1, 6);
  parameter Real dimsize = size(x, 0);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the second argument for the size builtin function of arrays shall not be less equal zero.It must be greater than zero.</html>"));
end ArrayDimSizeIncorrectArgument1;
