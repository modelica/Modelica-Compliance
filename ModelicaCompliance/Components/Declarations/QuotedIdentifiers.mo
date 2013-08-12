within ModelicaCompliance.Components.Declarations;

model QuotedIdentifiers
  extends Icons.TestCase;
  Real '\"\'\?\\\a\b\f\n\r\t\v';
equation
  '\"\'\?\\\a\b\f\n\r\t\v' = time;
  assert('\"\'\?\\\a\b\f\n\r\t\v' < 10.0, "This assertion should never trigger. It was added simply to do something at run-time.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"2.3.1","4.4"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Checks that you can use quoted identifiers as variables.</html>"));
end QuotedIdentifiers;
