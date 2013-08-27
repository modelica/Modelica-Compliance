within ModelicaCompliance.Scoping.NameLookup.Imports;


model RenamingImportNonPackage
  extends Icons.TestCase;

  encapsulated model A
    Real x = 1.0;
  end A;

  import A2 =
    ModelicaCompliance.Scoping.NameLookup.Imports.RenamingImportNonPackage.A;
  A2 a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to import a definition which is
        not a package or package element via a renaming import.</html>"));
end RenamingImportNonPackage;
