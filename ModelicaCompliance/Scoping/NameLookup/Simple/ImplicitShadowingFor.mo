within ModelicaCompliance.Scoping.NameLookup.Simple;

model ImplicitShadowingFor
  extends Icons.TestCase;

  Integer x = 2;
  Integer y;
equation
  for x in {3} loop
    y = x;
  end for;

  assert(y == 3, "The wrong x was found!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that for iterators shadows locally defined variables.</html>"));
end ImplicitShadowingFor;
