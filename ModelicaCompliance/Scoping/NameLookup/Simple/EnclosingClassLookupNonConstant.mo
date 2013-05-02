within ModelicaCompliance.Scoping.NameLookup.Simple;

model EnclosingClassLookupNonConstant
  extends Icons.TestCase;

  Integer x = 4;

  model A
    Integer y = x;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that variables found in an enclosing scope must be declared constant.</html>"));
end EnclosingClassLookupNonConstant;
