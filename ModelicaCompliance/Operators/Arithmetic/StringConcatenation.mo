within ModelicaCompliance.Operators.Arithmetic;

model StringConcatenation
  extends Icons.TestCase;

  String s;
equation
  s = "Testing" + " " + "modelica" + " " + "compliance";
  
  assert(s == "Testing modelica compliance", "s was not set correctly");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that string concatenation is possible.</html>"));
end StringConcatenation;
