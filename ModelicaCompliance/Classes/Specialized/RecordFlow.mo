within ModelicaCompliance.Classes.Specialized;

model RecordFlow
  extends Icons.TestCase;

  record R
    flow Real x = 1.0;
  end R;

  R r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that elements with flow prefix are not allowed in records.</html>"));
end RecordFlow;
