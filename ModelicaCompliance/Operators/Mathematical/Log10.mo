within ModelicaCompliance.Operators.Mathematical;

model Log10
  extends Icons.TestCase;

  
  Real r;
equation
  r = log10(45);
  
  assert(Util.compareReal(r, 1.6532125137753437), "The approximate value of the scalar variable r can not be considered as equal to 1.6532125137753437");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in log10 function is possible.</html>"));
end Log10;
