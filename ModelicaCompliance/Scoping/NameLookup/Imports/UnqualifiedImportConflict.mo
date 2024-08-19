within ModelicaCompliance.Scoping.NameLookup.Imports;


model UnqualifiedImportConflict
  extends Icons.TestCase;

  encapsulated package P
    constant Real x = 1.0;
  end P;

  encapsulated package P2
    constant Real x = 2.0;
  end P2;

  model A
    import
      ModelicaCompliance.Scoping.NameLookup.Imports.UnqualifiedImportConflict.P.*;
    import
      ModelicaCompliance.Scoping.NameLookup.Imports.UnqualifiedImportConflict.P2
      .*;
    Real y = x;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's an error if the same name is found in
        multiple unqualified imports.</html>"));
end UnqualifiedImportConflict;
