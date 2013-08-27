within ModelicaCompliance.Scoping.NameLookup.Imports;


model QualifiedImportProtected
  extends Icons.TestCase;

  encapsulated package P
    constant Real x = 2.0;
  protected
    constant Real y = 3.0;
  end P;

  model A
    import
      ModelicaCompliance.Scoping.NameLookup.Imports.QualifiedImportProtected.P.y;
    Real z = y;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's an error to import a protected element.</html>"));
end QualifiedImportProtected;
