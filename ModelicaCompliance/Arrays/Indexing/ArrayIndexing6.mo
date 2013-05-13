within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing6
  extends Icons.TestCase;

  Integer x[3, 2] = {{1, 2}, {3, 4}, {8, 9}};
  Integer y[3, 1];
equation
  y = x[:, 1:1];
  assert(y[1, 1] == 1, "The element of y[1, 1] must be 1");
  assert(y[2, 1] == 3, "The element of y[2, 1] must be 3");
  assert(y[3, 1] == 8, "The element of y[3, 1] must be 8");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve the the first column of the matrix as column matrix.</html>"));
end ArrayIndexing6;
