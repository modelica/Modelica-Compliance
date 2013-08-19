within ModelicaCompliance.Classes.Specialized;

model OperatorRecordInitialEquation
  extends Icons.TestCase;

  operator record OR
    Real x;
  initial equation
    x = 1.0;
  end OR;

  OR r;
equation
  der(r.x) = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that initial equation sections are not allowed in operator records.</html>"));
end OperatorRecordInitialEquation;
