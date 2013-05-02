within ModelicaCompliance.Algorithms.For;

model NestedLoops
  extends Icons.TestCase;

  Integer x[3, 2];
algorithm
  for i in 1:3 loop
    for j in 1:2 loop
      x[i, j] := i * j;
    end for;
  end for;

  assert(x[1, 1] == 1, "x[1, 1] was not set correctly.");
  assert(x[1, 2] == 2, "x[1, 2] was not set correctly.");
  assert(x[2, 1] == 2, "x[2, 1] was not set correctly.");
  assert(x[2, 2] == 4, "x[2, 2] was not set correctly.");
  assert(x[3, 1] == 3, "x[3, 1] was not set correctly.");
  assert(x[3, 2] == 6, "x[3, 2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests nesting of for-statements.</html>"));
end NestedLoops;
