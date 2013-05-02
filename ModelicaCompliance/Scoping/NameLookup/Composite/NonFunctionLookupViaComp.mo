within ModelicaCompliance.Scoping.NameLookup.Composite;

model NonFunctionLookupViaComp
  extends Icons.TestCase;

  class A
    class B
      Real y = 2.0;
    end B;
  end A;

  A a;
  a.B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's not allowed to look up a non-function class
      via a component.</html>"));
end NonFunctionLookupViaComp;
