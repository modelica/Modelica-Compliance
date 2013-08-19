within ModelicaCompliance.Classes.Specialized;

model RecordEquation
  extends Icons.TestCase;

  record R
    Real x;
  equation
    x = 1.0;
  end R;

  R r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that equation sections are not allowed in records.</html>"));
end RecordEquation;
