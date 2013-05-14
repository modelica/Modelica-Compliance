within ModelicaCompliance.Operators.Overloading;

model VectorizationNoAlgorithm
  extends Icons.TestCase;

  function Test
    input Integer i1;
    output Integer o1 = i1;
  end Test;
  
  Integer[2] a = {42, 1984};
  Integer[2] b = Test(a);
equation
  assert(b[1] == 42, "Vectorization should have been applied.");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests for simple vectorization of a function with no algorithm section.</html>"));

end VectorizationNoAlgorithm;

