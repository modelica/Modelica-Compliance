within ModelicaCompliance.Scoping.NameLookup.Simple;

model EnclosingClassLookupClass
  extends Icons.TestCase;

  model A
    Integer x = 2;
  end A;

  model B
    A a;
  end B;

  B b;
equation
  assert(b.a.x == 2, "b.a.x was not set correctly!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that classes can be looked up in an enclosing scope.</html>"));
end EnclosingClassLookupClass;
