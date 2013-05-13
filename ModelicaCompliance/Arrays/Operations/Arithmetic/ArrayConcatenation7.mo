within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation7
  extends Icons.TestCase;
  
  Integer[2, 3] c =  [1, 2, 3 ; 4, 5, 6]; //{{1,2,3}, {4,5,6}};
  Integer[2, 6] c1 = cat(2, c, 2*c);
equation
  assert(c1[1, 1] == 1, "The element of c1[1, 1] must be 1");
  assert(c1[1, 2] == 2, "The element of c1[1, 2] must be 2");
  assert(c1[1, 3] == 3, "The element of c1[1, 3] must be 3");
  assert(c1[1, 4] == 2, "The element of c1[1, 4] must be 2");
  assert(c1[1, 5] == 4, "The element of c1[1, 5] must be 4");
  assert(c1[1, 6] == 6, "The element of c1[1, 6] must be 6");
  assert(c1[2, 1] == 4, "The element of c1[2, 1] must be 4");
  assert(c1[2, 2] == 5, "The element of c1[2, 2] must be 5");
  assert(c1[2, 3] == 6, "The element of c1[2, 3] must be 6");
  assert(c1[2, 4] == 8, "The element of c1[2, 4] must be 8");
  assert(c1[2, 5] == 10, "The element of c1[2, 5] must be 10");
  assert(c1[2, 6] == 12, "The element of c1[2, 6] must be 12");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation7;
