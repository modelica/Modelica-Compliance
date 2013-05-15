within ModelicaCompliance.Operators.Mathematical;

model Log
  extends Icons.TestCase;

  
  Real r;
equation
  r = log(45);
  
  assert(Util.compareReal(r, 3.8066624897703196), "The approximate value of the scalar variable r can not be considered as equal to 3.8066624897703196");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in log function is posssible.</html>"));
end Log;
