within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation11
  extends Icons.TestCase;
  
  Integer[1, 3] b = [1, 2, 3];
  Integer[1, 4] c = [b, 4];
equation
  assert(c[1, 1] == 1, "The element of c[1, 1] must be 1");
  assert(c[1, 2] == 2, "The element of c[1, 2] must be 2");
  assert(c[1, 3] == 3, "The element of c[1, 3] must be 3");
  assert(c[1, 4] == 4, "The element of c[1, 4] must be 4");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.4.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation11;
