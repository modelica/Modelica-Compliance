within ModelicaCompliance.Scoping.NameLookup.Composite;

model NonPackageLookupComp
  extends Icons.TestCase;

  class A
    Real x = 2.0;
  end A;

  Real y = A.x;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that looking up an non-encapsulated element, in this
      case a component, inside a class which does not satisfy the requirements for
      a package is forbidden.</html>"));
end NonPackageLookupComp;
