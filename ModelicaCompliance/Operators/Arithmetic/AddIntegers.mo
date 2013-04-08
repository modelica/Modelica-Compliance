within ModelicaCompliance.Operators.Arithmetic;

model AddIntegers
  extends Icons.TestCase;

  constant Integer i = 4711 + 1138;
equation
  assert(i == 5849, "The value of the scalar variable i should be 5849");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that addition of integer scalars is possible.</html>"));
end AddIntegers;
