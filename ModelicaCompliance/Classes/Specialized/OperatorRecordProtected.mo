within ModelicaCompliance.Classes.Specialized;

model OperatorRecordProtected
  extends Icons.TestCase;

  operator record OR
    Real x = 1.0;
  protected
    Real y = 2.0;
  end OR;

  OR r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected sections are not allowed in operator records.</html>"));
end OperatorRecordProtected;
