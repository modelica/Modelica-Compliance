within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSizeIncorrectArgument3
  extends Icons.TestCase;

  parameter Real[4, 1, 6] x = fill(1., 4, 1, 6);
  parameter Real dimsize[2] = size(x, [1,2]);
   
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that second argument of size have to be scalar.</html>"));
end ArrayDimSizeIncorrectArgument3;
