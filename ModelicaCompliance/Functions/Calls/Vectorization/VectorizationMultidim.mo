within ModelicaCompliance.Functions.Calls.Vectorization;

model VectorizationMultidim
  extends Icons.TestCase;

  function Test
    input Integer i1;
    output Integer o1;
  algorithm
    o1 := i1;
  end Test;
  
  Integer[2,2] a = {{42, 1984},{496,1729}};
  Integer[2,2] b = Test(a);
equation
  assert(b[2,2] == 1729, "Vectorization should have been applied.");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests for multi-dimensional vectorization of a function call.</html>"));

end VectorizationMultidim;

