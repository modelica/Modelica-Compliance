within ModelicaCompliance.Algorithms.While;

model WhileStatement
  extends Icons.TestCase;

  Integer x;
  Integer y;
algorithm
  x := 4;
  while y < x loop
    y := y + 1;
  end while;

  assert(x == 4, "x was not set correctly.");
  assert(y == 4, "y was not set correctly.");
	
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests while-loop.</html>"));
end WhileStatement;
