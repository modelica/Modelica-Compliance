within ModelicaCompliance.Operators.Arithmetic;

model SubtractIntegers
  extends Icons.TestCase;

  constant Integer i = 4711 - 1138;
equation
  assert(i == 3573, "The value of the scalar variable i should be 3573");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that subtraction of integer scalars is possible.</html>"));
end SubtractIntegers;
