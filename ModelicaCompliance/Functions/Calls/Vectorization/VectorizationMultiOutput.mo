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
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that vectorization of function with multiple outputs
        is rejected, since only functions with one scalar return value is allowed
        to be vectorized..</html>"));

end VectorizationMultiOutput;
