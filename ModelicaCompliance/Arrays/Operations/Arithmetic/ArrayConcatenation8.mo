within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation8
  extends Icons.TestCase;
  
  Integer[2, 3] c =  [1, 2, 3 ; 4, 5, 6]; //{{1,2,3}, {4,5,6}};
  Integer[4, 3] c1 = cat(1, c, c);
equation
  assert(c1[1, 1] == 1, "The element of c1[1, 1] must be 1");
  assert(c1[1, 2] == 2, "The element of c1[1, 2] must be 2");
  assert(c1[1, 3] == 3, "The element of c1[1, 3] must be 3");
  assert(c1[2, 1] == 4, "The element of c1[2, 1] must be 4");
  assert(c1[2, 2] == 5, "The element of c1[2, 2] must be 5");
  assert(c1[2, 3] == 6, "The element of c1[2, 3] must be 6");
  assert(c1[3, 1] == 1, "The element of c1[3, 1] must be 1");
  assert(c1[3, 2] == 2, "The element of c1[3, 2] must be 2");
  assert(c1[3, 3] == 3, "The element of c1[3, 3] must be 3");
  assert(c1[4, 1] == 4, "The element of c1[4, 1] must be 4");
  assert(c1[4, 2] == 5, "The element of c1[4, 2] must be 5");
  assert(c1[4, 3] == 6, "The element of c1[4, 3] must be 6");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.4.2", "10.4.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation8;
