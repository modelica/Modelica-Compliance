within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing14
  extends Icons.TestCase;

  Integer x[5] = {15, 16, 17, 18, 19};
  Integer y[3];
equation
  y = x[1:2:5];	
  
  assert(y[1] == 15, "The element of y[1] must be 15");
  assert(y[2] == 17, "The element of y[2] must be 17");  
  assert(y[3] == 19, "The element of y[3] must be 19");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve some elements of a vector as the vector.</html>"));
end ArrayIndexing14;
