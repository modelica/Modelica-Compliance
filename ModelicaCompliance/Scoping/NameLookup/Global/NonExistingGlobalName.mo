within ModelicaCompliance.Scoping.NameLookup.Global;

model NonExistingGlobalName
  extends Icons.TestCase;

  .Missing m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the lookup of a global name that does not exist
        results in an error.</html>"));
end NonExistingGlobalName;
