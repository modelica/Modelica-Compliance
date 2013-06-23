within ModelicaCompliance.Algorithms.For;

model BoolRange
  extends Icons.TestCase;

  Boolean b[Boolean];
algorithm
  for i in false:true loop
    b[i] := i;
  end for;

  assert(b[false] == false, "b[false] was not set correctly.");
  assert(b[true] == true, "b[true] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of a boolean range in a for-statement.</html>"));
end BoolRange;
