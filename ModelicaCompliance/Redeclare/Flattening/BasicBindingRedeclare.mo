within ModelicaCompliance.Redeclare.Flattening;

model BasicBindingRedeclare
  extends Icons.TestCase;

  model M
    replaceable Integer x = 1;
  algorithm
    assert(x == 2, "x was not redeclared!");
  end M;

  M m(redeclare Integer x = 2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that redeclaring the binding of a variable of basic type works.</html>"));
end BasicBindingRedeclare;
