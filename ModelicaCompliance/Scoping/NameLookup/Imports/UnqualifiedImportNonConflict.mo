within ModelicaCompliance.Scoping.NameLookup.Imports;


model UnqualifiedImportNonConflict
  extends Icons.TestCase;

  encapsulated package P
    constant Real x = 1.0;
    constant Real z = 3.0;
  end P;

  encapsulated package P2
    constant Real x = 2.0;
  end P2;

  model A
    import
      ModelicaCompliance.Scoping.NameLookup.Imports.UnqualifiedImportNonConflict.P
      .*;
    import
      ModelicaCompliance.Scoping.NameLookup.Imports.UnqualifiedImportNonConflict.P2
      .*;
    Real y = z;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not an error to be able to find a name in
        multiple unqualified imports, it's only an error if such a name is
        used during name lookup. I.e. both P and P2 contains x in this test, but
        that's ok since x is not used by the importer A.</html>"));
end UnqualifiedImportNonConflict;
