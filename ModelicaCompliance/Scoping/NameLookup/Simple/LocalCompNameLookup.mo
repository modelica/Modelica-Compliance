within ModelicaCompliance.Scoping.NameLookup.Simple;

model LocalCompNameLookup
  extends Icons.TestCase;

  Real x = 2.0;
  Real y = x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component name in the local scope can be found.</html>"));
end LocalCompNameLookup;
