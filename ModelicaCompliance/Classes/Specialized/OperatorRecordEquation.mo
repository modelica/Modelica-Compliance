within ModelicaCompliance.Classes.Specialized;

model OperatorRecordEquation
  extends Icons.TestCase;

  operator record OR
    Real x;
  equation
    x = 1.0;
  end OR;

  OR r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that equation sections are not allowed in operator records.</html>"));
end OperatorRecordEquation;
