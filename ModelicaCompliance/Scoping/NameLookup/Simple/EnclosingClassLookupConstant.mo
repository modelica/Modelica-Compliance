within ModelicaCompliance.Scoping.NameLookup.Simple;

model EnclosingClassLookupConstant
  extends Icons.TestCase;

  constant Integer x = 4;

  model A
    constant Integer y = x;
  equation
    assert(y == 4, "y is not set correctly!");
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that constants can be looked up in an enclosing scope.</html>"));
end EnclosingClassLookupConstant;
