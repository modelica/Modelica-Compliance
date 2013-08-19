within ModelicaCompliance.Classes.Specialized;

model RecordInput
  extends Icons.TestCase;

  record R
    input Real x = 1.0;
  end R;

  R r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that elements with input prefix are not allowed in records.</html>"));
end RecordInput;
