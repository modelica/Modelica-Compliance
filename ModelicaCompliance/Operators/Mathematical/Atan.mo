within ModelicaCompliance.Operators.Mathematical;

model Atan
  extends Icons.TestCase;
  

  Real r;
equation
  r = atan(0.5); 
  
  assert(Util.compareReal(r, 0.4636476090008061), "The approximate value of the scalar variable r can not be considered as equal to 0.4636476090008061");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in inverse tangent function is possible.</html>"));
end Atan;
