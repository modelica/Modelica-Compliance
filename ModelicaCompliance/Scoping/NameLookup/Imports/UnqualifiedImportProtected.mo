within ModelicaCompliance.Scoping.NameLookup.Imports;


model UnqualifiedImportProtected
  extends Icons.TestCase;

  encapsulated package P
    constant Real x = 2.0;
  protected
    constant Real y = 3.0;
  end P;

  model A
    import
      ModelicaCompliance.Scoping.NameLookup.Imports.UnqualifiedImportProtected.P
      .*;
    Real z = y;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the name lookup only considers public members of
        packages imported via unqualified imports.</html>"));
end UnqualifiedImportProtected;
