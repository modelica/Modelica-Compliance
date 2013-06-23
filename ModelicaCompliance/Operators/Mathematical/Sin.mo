within ModelicaCompliance.Operators.Mathematical;

model Sin
  extends Icons.TestCase;

  
  Real r;
equation
  r = sin(45); 
  
  assert(Util.compareReal(r, 0.8509035245341184), "The approximate value of the scalar variable r can not be considered as equal to 0.8509035245341184");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sin function is possible.</html>"));
end Sin;
