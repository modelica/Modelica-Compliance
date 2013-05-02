within ModelicaCompliance.Scoping.NameLookup.Simple;

model ImplicitShadowingReduction
  //extends Icons.TestCase;

  Integer x = 2;
  Integer y = sum(x for x in 1:5);
equation
  assert(y == 15, "The wrong x was found!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that reduction iterators shadows locally defined variables.</html>"));
end ImplicitShadowingReduction;
