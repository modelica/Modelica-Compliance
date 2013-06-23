within ModelicaCompliance.Operators.Arithmetic;

model AddReal
  extends Icons.TestCase;

  constant Real r = 4711.2 + 1138.3;
equation
  assert(Util.compareReal(r, 5849.5), "The approximate value of the scalar variable r can not be considered as equal to 5849.5");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that addition of real scalars is possible.</html>"));
end AddReal;
