within ModelicaCompliance.Operators.Mathematical;

model Cos
  extends Icons.TestCase;

  Real r;
equation
  r = cos(45);
  
  assert(Util.compareReal(r, 0.5253219888177297), "The approximate value of the scalar variable r can not be considered as equal to 0.5253219888177297");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in cos function is possible.</html>"));
end Cos;
