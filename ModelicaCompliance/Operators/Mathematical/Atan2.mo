within ModelicaCompliance.Operators.Mathematical;

model Atan2
  extends Icons.TestCase;

  Real r;
equation
  r = atan2(0.5,0.5);
  
  assert(Util.compareReal(r, 0.7853981633974483), "The approximate value of the scalar variable r can not be considered as equal to 0.7853981633974483");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in inverse tangent2 function is possible.</html>"));
end Atan2;
