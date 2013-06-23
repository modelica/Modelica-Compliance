within ModelicaCompliance.Equations.For;

model BoolTypeRange
  extends Icons.TestCase;

  Boolean b[Boolean];
equation
  for i in Boolean loop
    b[i] = i;
  end for;

  assert(b[false] == false, "b[false] was not set correctly.");
  assert(b[true] == true, "b[true] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests the use of the type Boolean as a range in a for-equation.</html>"));
end BoolTypeRange;
