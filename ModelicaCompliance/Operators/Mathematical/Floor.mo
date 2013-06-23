within ModelicaCompliance.Operators.Mathematical;

model Floor
  extends Icons.TestCase;

  
  Real r;
equation
  r = floor(4.5);
  
  assert(Util.compareReal(r, 4.0), "The approximate value of the scalar variable r can not be considered as equal to 4.0");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in Floor function is possible.</html>"));
end Floor;
