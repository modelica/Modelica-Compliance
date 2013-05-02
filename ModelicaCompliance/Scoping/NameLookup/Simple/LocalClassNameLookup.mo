within ModelicaCompliance.Scoping.NameLookup.Simple;

model LocalClassNameLookup
  extends Icons.TestCase;

  class A
    Real x = 2.0;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a class name in the local scope can be found.</html>"));
end LocalClassNameLookup;
