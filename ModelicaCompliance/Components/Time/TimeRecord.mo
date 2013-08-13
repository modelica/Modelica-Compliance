within ModelicaCompliance.Components.Time;

model TimeRecord
  extends Icons.TestCase;

  record R
    Real x = time;
  end R;

  R r;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the built-in variable time can't be used in a
      record, it's only available in models and blocks.</html>"));
end TimeRecord;
