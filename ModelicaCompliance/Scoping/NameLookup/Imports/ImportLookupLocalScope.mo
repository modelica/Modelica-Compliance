within ModelicaCompliance.Scoping.NameLookup.Imports;


model ImportLookupLocalScope
  extends Icons.TestCase;

  model A
    Real x = 3.2;
  end A;

  import B = A;
  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the lookup of an imported name is not started
        in the local scope.</html>"));
end ImportLookupLocalScope;
