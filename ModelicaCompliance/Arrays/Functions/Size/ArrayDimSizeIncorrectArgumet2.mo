within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSizeIncorrectArgument2
  extends Icons.TestCase;

  parameter Real[4, 1, 6] x = fill(1., 4, 1, 6);
  parameter Real dimsize = size(x, 4);
   
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the second argument for the size builtin function of arrays shall not be greater than the number of dimensions of the array
	      .It must be less equal to the number of dimensions of the array.</html>"));
end ArrayDimSizeIncorrectArgument2;
