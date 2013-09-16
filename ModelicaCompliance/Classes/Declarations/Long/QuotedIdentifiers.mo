within ModelicaCompliance.Classes.Declarations.Long;

package QuotedIdentifiers
  extends Icons.TestPackage;
  /* The example is stored inside an auxilliary package to avoid mapping quoted identifiers to file system */
  model '\"\'\?\\\a\b\f\n\r\t\v'
    Real r;
  equation
    r = time;
    assert(r < 10.0, "This assertion should never trigger. It was added simply to do something at run-time.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"2.3.1","4.5"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Checks that you can use quoted identifiers as class names.</html>"));
  end '\"\'\?\\\a\b\f\n\r\t\v';
end QuotedIdentifiers;
