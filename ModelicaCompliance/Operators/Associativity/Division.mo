within ModelicaCompliance.Operators.Associativity;

model Division
  extends Icons.TestCase;

  constant Real r = 4/2/2;
equation
  assert(Util.compareReal(r, 1.0), "The approximate value of the scalar variable r can not be considered as equal to 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that division expression operators are left associative.</html>"));
end Division;
