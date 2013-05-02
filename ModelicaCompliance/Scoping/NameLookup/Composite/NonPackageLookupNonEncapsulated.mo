within ModelicaCompliance.Scoping.NameLookup.Composite;

model NonPackageLookupNonEncapsulated
  extends Icons.TestCase;

  class A
    Real x = 2.0;

    class B
      Real y = 3.0;
    end B;
  end A;

  A.B ab;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that looking up an non-encapsulated element inside a class
      which does not satisfy the requirements for a package is forbidden.</html>"));
end NonPackageLookupNonEncapsulated;
