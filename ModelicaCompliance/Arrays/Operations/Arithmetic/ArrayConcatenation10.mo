within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation10
  extends Icons.TestCase;
  
  Integer[1, 4] c = cat(2, {{-1}}, zeros(1, 2), {{1}});
equation
  assert(c[1, 1] == -1, "The element of c[1, 1] must be -1");
  assert(c[1, 2] == 0, "The element of c[1, 2] must be 0");
  assert(c[1, 3] == 0, "The element of c[1, 3] must be 0");
  assert(c[1, 4] == 1, "The element of c[1, 4] must be 1");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation10;
