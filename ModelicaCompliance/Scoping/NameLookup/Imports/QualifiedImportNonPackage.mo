within ModelicaCompliance.Scoping.NameLookup.Imports;


model QualifiedImportNonPackage
  extends Icons.TestCase;

  encapsulated model A
    Real x = 1.0;
  end A;

  import A2 =
    ModelicaCompliance.Scoping.NameLookup.Imports.QualifiedImportNonPackage.A;
  A2 a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to import a definition which is
        not a package or package element via a qualified import.</html>"));
end QualifiedImportNonPackage;
