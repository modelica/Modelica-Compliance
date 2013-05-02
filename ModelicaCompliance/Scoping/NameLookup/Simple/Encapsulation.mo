within ModelicaCompliance.Scoping.NameLookup.Simple;

model Encapsulation
  extends Icons.TestCase;

  encapsulated model A
    constant Integer x = abs(-4);
  equation
    assert(x == 4, "x was not set correctly!");
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that builtin functions can be found even if the scope is encapsulated.</html>"));
end Encapsulation;
