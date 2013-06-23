within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWAddition1
  extends Icons.TestCase;
  

  Real r;
equation
  r = 2 .+4;
  
  assert(Util.compareReal(r, 6.0), "The value of r must be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise addition of two numeric scalars is possible.</html>"));
end ArrayEWAddition1;
