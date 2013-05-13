within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexingWithEnd4
  extends Icons.TestCase;

  parameter Integer x[5,5] = ones(5,5); 
  parameter Integer y[:,:] = matrix(x[end,end]); 
equation
  assert(y[1, 1] == 1, "The element of y[1, 1] must be 1");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve elements of the matrix as the matrix using indexing with end.</html>"));
end ArrayIndexingWithEnd4;
