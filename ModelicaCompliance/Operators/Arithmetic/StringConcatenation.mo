within ModelicaCompliance.Operators.Arithmetic;

model StringConcatenation
  extends Icons.TestCase;

  String s;
equation
  s = "Testing" + " " + "modelica" + " " + "compliance";
  assert(s == "Testing modelica compliance", "The string concatenation is wrong");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that string concatenation is possible.</html>"));
end StringConcatenation;
