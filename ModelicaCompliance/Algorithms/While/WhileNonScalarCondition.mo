within ModelicaCompliance.Algorithms.While;

model WhileNonScalarCondition
  extends Icons.TestCase;

  Real x;
algorithm
  while {true, true} loop
    x := 3.0;
  end while;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that non-scalar conditions are detected.</html>"));
end WhileNonScalarCondition;
