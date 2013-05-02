within ModelicaCompliance.Scoping.NameLookup.Composite;

model NonPackageLookupEncapsulated
  extends Icons.TestCase;

  class A
    Real x = 2.0;

    encapsulated class B
      Real y = 3.0;
    end B;
  end A;

  A.B ab;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that looking up an encapsulated element inside a class
      which does not satisfy the requirements for a package is allowed.</html>"));
end NonPackageLookupEncapsulated;
