within ModelicaCompliance.Scoping.NameLookup.Imports;


model RedeclareImport
  extends Icons.TestCase;

  encapsulated package P
    replaceable model A
      Real x = 2.2;
    end A;
  end P;

  model B
    import M =
      ModelicaCompliance.Scoping.NameLookup.Imports.RedeclareImport.P.A;
    M m;
  end B;

  model C
    Real x = 4.2;
  end C;

  B b(redeclare model M = ModifyImport.C);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to redeclare an import.</html>"));
end RedeclareImport;
