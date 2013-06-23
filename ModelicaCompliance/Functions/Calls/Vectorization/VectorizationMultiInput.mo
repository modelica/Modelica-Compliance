within ModelicaCompliance.Functions.Calls.Vectorization;

model VectorizationMultiInput
  extends Icons.TestCase;

  function Test
    input Integer i1;
    input Integer i2;
    output Integer o1;
  algorithm
    o1 := i1 + i2;
  end Test;
  
  Integer[2] a = Test({42, 1984},{496,1729});
equation
  assert(a[1] == 538, "Vectorization should have been applied.");
  assert(a[2] == 3713, "Vectorization should have been applied.");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests for vectorization of a function call with multiple inputs.</html>"));

end VectorizationMultiInput;

