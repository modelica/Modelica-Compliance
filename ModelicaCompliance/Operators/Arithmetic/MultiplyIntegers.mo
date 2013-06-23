within ModelicaCompliance.Operators.Arithmetic;

model MultiplyIntegers
  extends Icons.TestCase;

  constant Integer i = 4711 * 1138;
equation
  assert(i == 5361118, "The value of the scalar variable i should be 5361118");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that multiplication of integer scalars is possible.</html>"));
end MultiplyIntegers;
