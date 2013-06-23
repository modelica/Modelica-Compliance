within ModelicaCompliance.Algorithms.Assignment;

model AssignmentOrder
  extends Icons.TestCase;

  Real x;
algorithm
  x := 3.0;
  assert(Util.compareReal(x, 3.0), "x was not set correctly, "+String(x)+" <> 3.0.");
  x := 4.0;
  assert(Util.compareReal(x, 4.0), "x was not set correctly, "+String(x)+" <> 4.0.");
  x := 5.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that assignments in an algorithm section are performed
      in the given order.</html>"));
end AssignmentOrder;
