within ModelicaCompliance.Classes.Specialized;

model RecordOuter
  extends Icons.TestCase;

  record R
    outer Real x;
  end R;

  inner Real x = 1.0;
  R r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that elements with outer prefix are not allowed in records.</html>"));
end RecordOuter;
