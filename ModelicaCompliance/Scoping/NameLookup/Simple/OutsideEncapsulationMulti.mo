within ModelicaCompliance.Scoping.NameLookup.Simple;

model OutsideEncapsulationMulti
  extends Icons.TestCase;

  constant Real x = 2.0;

  encapsulated model A
    model B
      constant Real y = x;
    end B;
  end A;

  A.B ab;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that elements defined outside an encapsulated scope
      can't be found in the encapsulated scope, even if the innermost scope is
      not encapsulated.</html>"));
end OutsideEncapsulationMulti;
