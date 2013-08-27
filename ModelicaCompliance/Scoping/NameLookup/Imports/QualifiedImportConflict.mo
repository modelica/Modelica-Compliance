within ModelicaCompliance.Scoping.NameLookup.Imports;


model QualifiedImportConflict
  extends Icons.TestCase;

  encapsulated package P
    constant Real x = 1.0;
  end P;

  encapsulated package P2
    constant Real x = 2.0;
  end P2;

  model A
    import ModelicaCompliance.Scoping.NameLookup.Imports.QualifiedImportConflict.P;
    import P = ModelicaCompliance.Scoping.NameLookup.Imports.QualifiedImportConflict.P2;
    Real x = P.x;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to have multiple qualified
        import-clauses with the same import name.</html>"));
end QualifiedImportConflict;
