within ModelicaCompliance.Classes.Specialized;

model RecordInitialEquation
  extends Icons.TestCase;

  record R
    Real x;
  initial equation
    x = 1.0;
  end R;

  R r;
equation
  der(r.x) = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that initial equation sections are not allowed in records.</html>"));
end RecordInitialEquation;
