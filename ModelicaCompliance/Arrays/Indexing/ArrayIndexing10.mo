within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing10
  extends Icons.TestCase;

  Integer x[3, 2] = {{1, 2}, {3, 4}, {8, 9}};
  Integer y[2];
equation
  y = x[2, {1, 2}];	
  assert(y[1] == 3, "The element of y[1] must be 3");
  assert(y[2] == 4, "The element of y[2] must be 4");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve the second row of the matrix as a vector.</html>"));
end ArrayIndexing10;
