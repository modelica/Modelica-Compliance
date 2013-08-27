within ModelicaCompliance.Scoping.NameLookup.Imports;


model UnqualifiedImportNonPackage
  extends Icons.TestCase;

  encapsulated model A
    model B
      Real x = 1.0;
    end B;
  end A;

  import
    ModelicaCompliance.Scoping.NameLookup.Imports.UnqualifiedImportNonPackage.A
    .*;
  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that an unqualified import is not allowed to import
        from a non-package.</html>"));
end UnqualifiedImportNonPackage;
