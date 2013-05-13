within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation16
  extends Icons.TestCase;
  
  Integer[3] a = {1,2,3};
  Integer[3] b = {4, 5, 6};
  Integer[3, 2] c = [a, b];
equation
  assert(c[1, 1] == 1, "The element of c[1, 1] must be 1");
  assert(c[1, 2] == 4, "The element of c[1, 2] must be 4");
  assert(c[2, 1] == 2, "The element of c[2, 1] must be 2");
  assert(c[2, 2] == 5, "The element of c[2, 2] must be 5");
  assert(c[3, 1] == 3, "The element of c[3, 1] must be 3");
  assert(c[3, 2] == 6, "The element of c[3, 2] must be 6");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation16;
