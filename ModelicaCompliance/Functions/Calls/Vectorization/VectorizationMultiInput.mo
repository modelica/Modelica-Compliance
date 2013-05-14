within ModelicaCompliance.Operators.Overloading;

model VectorizationMultiInput
  extends Icons.TestCase;

  function Test
    input Integer i1;
    input Integer i2;
    output Integer o1[2];
  algorithm
    o1[1] := i2;
    o1[2] := i1;
  end Test;
  
  Integer[2,2] a = Test({42, 1984},{496,1729});
equation
  assert(a[2,2] == 1984, "Vectorization should have been applied.");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests for vectorization of a function call with multiple inputs.</html>"));

end VectorizationMultiInput;

