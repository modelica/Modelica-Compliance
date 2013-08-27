within ModelicaCompliance.Algorithms.While;

model WhileNonScalarCondition
  extends Icons.TestCase;

  Real x;
algorithm
  while {true, true} loop
    x := 3.0;
	break;
  end while;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that non-scalar conditions are detected.</html>"));
end WhileNonScalarCondition;
