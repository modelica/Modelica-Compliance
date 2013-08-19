within ModelicaCompliance.Classes.Specialized;

model RecordProtected
  extends Icons.TestCase;

  record R
    Real x = 1.0;
  protected
    Real y = 2.0;
  end R;

  R r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected sections are not allowed in records.</html>"));
end RecordProtected;
