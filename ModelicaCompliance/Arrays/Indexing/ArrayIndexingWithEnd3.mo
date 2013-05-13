within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexingWithEnd3
  extends Icons.TestCase;

  parameter Integer x[5,5] = ones(5,5); 
  parameter Integer y[:,:] = x[end:end,1:end-1]; 
equation
  assert(y[1, 1] == 1, "The element of y[1, 1] must be 1");
  assert(y[1, 2] == 1, "The element of y[1, 2] must be 1"); 
  assert(y[1, 3] == 1, "The element of y[1, 3] must be 1");
  assert(y[1, 4] == 1, "The element of y[1, 4] must be 1"); 
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve elements of the matrix as the matrix using indexing with end.</html>"));
end ArrayIndexingWithEnd3;
