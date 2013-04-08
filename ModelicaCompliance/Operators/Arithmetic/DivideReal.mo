within ModelicaCompliance.Operators.Arithmetic;

model DivideReal
  extends Icons.TestCase;

  constant Real r = 23424.5 / 1234.78;
equation
  assert(r == 18.970585853350396, "The value of the scalar variable r should be 18.970585853350396");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that division of real scalars is possible.</html>"));
end DivideReal;
