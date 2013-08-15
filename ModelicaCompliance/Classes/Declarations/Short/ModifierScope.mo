within ModelicaCompliance.Classes.Declarations.Short;

model ModifierScope
  extends Icons.TestCase;

  constant Real x = 1.0;

  model A
    constant Real x = 2.0;
    Real y;
  end A;

  model B = A(y = x);
  B b;
equation
  assert(Util.compareReal(b.y, 1.0), "x was not given the correct value.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a short class definition does not introduce an
        additional lexical scope for modifiers.</html>"));
end ModifierScope;
