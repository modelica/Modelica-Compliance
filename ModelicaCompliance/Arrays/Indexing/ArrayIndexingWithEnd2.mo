within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexingWithEnd2
  extends Icons.TestCase;

  parameter Integer x[5,5] = ones(5,5); 
  parameter Integer y[:,:] = x[1:end-1,end:end]; 
equation
  assert(y[1, 1] == 1, "The element of y[1, 1] must be 1");
  assert(y[2, 1] == 1, "The element of y[2, 2] must be 1"); 
  assert(y[3, 1] == 1, "The element of y[3, 3] must be 1");
  assert(y[4, 1] == 1, "The element of y[4, 1] must be 1");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve elements of the matrix as the matrix using indexing with end.</html>"));
end ArrayIndexingWithEnd2;
