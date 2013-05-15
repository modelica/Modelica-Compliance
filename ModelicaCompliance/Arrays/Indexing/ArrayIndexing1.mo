within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing1
  extends Icons.TestCase;

  Integer x[3, 2] = {{1, 2}, {3, 4}, {8, 9}};
  Integer y;
equation
  y = x[1, 1];
  
  assert(y == 1, "The value of y must be 1");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve an element from the the array.</html>"));
end ArrayIndexing1;
