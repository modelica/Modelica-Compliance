within ModelicaCompliance.Functions.Calls.Vectorization;

model VectorizationMultiOutput
  extends Icons.TestCase;

  function Test
    input Integer i1;
    input Integer i2;
    output Integer o1;
    output Integer o2;
  algorithm
    o1 := i2;
    o2 := i1;
  end Test;
  
  Integer[2] r1, r2;
equation
  (r1, r2) = Test({42, 1984},{496,1729});
  assert(r2[2] == 1984, "Vectorization should have been applied.");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests for multi-dimensional vectorization of a function call with multiple outputs.</html>"));

end VectorizationMultiOutput;

