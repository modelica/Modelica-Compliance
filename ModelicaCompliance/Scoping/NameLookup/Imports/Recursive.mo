within ModelicaCompliance.Scoping.NameLookup.Imports;


model Recursive
  extends Icons.TestCase;
  
  import A = ModelicaCompliance.Scoping.NameLookup.Imports.Recursive;
  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a named recursive import does not work.</html>"));
end Recursive;
