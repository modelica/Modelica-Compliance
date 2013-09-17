within ModelicaCompliance.Scoping.NameLookup.Global;

model NonPackageLikeClassLookup
  extends Icons.TestCase;

  model A
    constant Real x = 2.0;
    Real y = 3.0;
  end A;

  constant Real y = .ModelicaCompliance.Scoping.NameLookup.Global.PackageLikeClassLookup.A.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's not possible to look up a non-encapsulated
      name in a non-package class using global name lookup if the class does not
      satisfy the requirements for a package.</html>"));
end NonPackageLikeClassLookup;
