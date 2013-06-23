within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing4
  extends Icons.TestCase;

  Integer x[3, 2] = {{1, 2}, {3, 4}, {8, 9}};
  Integer y[2, 2];
equation
  y = x[1:2, :];
  
  assert(y[1, 1] == 1, "The element of y[1, 1] must be 1");
  assert(y[1, 2] == 2, "The element of y[1, 2] must be 2");
  assert(y[2, 1] == 3, "The element of y[2, 1] must be 3");
  assert(y[2, 2] == 4, "The element of y[2, 2] must be 4");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve the first two row of the matrix as a matrix.</html>"));
end ArrayIndexing4;
