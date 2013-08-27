within ModelicaCompliance.Algorithms.While;

model WhileNonBooleanCondition
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 1;
algorithm
  while i loop
    x := 3.0;
	break;
  end while;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that non-boolean conditions are detected.</html>"));
end WhileNonBooleanCondition;
