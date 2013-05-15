within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing2
  extends Icons.TestCase;

  Integer x[3, 2] = {{1, 2}, {3, 4}, {8, 9}};
  Integer y[3];
equation
  y = x[:, 1];
  
  assert(y[1] == 1, "The element of y[1] must be 1");
  assert(y[2] == 3, "The element of y[2] must be 3");
  assert(y[3] == 8, "The element of y[3] must be 8");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>TTests that it is possible to retrieve the first column of the array as the vector.</html>"));
end ArrayIndexing2;
