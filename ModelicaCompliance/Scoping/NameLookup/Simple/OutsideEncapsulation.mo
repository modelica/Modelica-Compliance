within ModelicaCompliance.Scoping.NameLookup.Simple;

model OutsideEncapsulation
  extends Icons.TestCase;

  constant Real x = 2.0;

  encapsulated model A
    constant Real y = x;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that elements defined outside an encapsulated scope
      can't be found in the encapsulated scope.</html>"));
end OutsideEncapsulation;
