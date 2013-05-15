within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision1
  extends Icons.TestCase;
  
  Real r;
equation
  r = 2 ./4;
  
  assert(Util.compareReal(r, 0.5), "The value of r must be 0.5");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise division of two numeric scalars is possible.</html>"));
end ArrayEWDivision1;
