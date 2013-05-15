within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing7
  extends Icons.TestCase;

  Integer x[3, 2] = {{1, 2}, {3, 4}, {8, 9}};
  Integer y[2];
equation
  y = x[scalar([1]), :];
  
  assert(y[1] == 1, "The element of y[1] must be 1");
  assert(y[2] == 2, "The element of y[2] must be 2");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve the first row of the matrix as a vector.</html>"));
end ArrayIndexing7;
