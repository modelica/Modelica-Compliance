within ModelicaCompliance.Functions.Calls.Vectorization;

model VectorizationMultiInputIllegal
  extends Icons.TestCase;

  function Test
    input Integer i1;
    input Integer i2;
    output Integer o1[2];
  algorithm
    o1[1] := i2;
    o1[2] := i1;
  end Test;
  
  Integer[3,2] a = Test({42, 1984, 1729},{255,496}) "This should fail as vectorization dimensions do not match";
equation
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests for failure of vectorization for a function call with multiple inputs where the vectorization dimensions don't match.</html>"));

end VectorizationMultiInputIllegal;

