within ModelicaCompliance.Redeclare.Flattening;

model InheritanceInnerOuterComp
  extends Icons.TestCase;

  model A
    outer Real x;
    Real y = x;
  end A;

  model B
    inner replaceable Real x;
    A a;
  equation
    x = 2;
  end B;

  B b(redeclare Real x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the inner/outer prefix of the original component
      declaration is inherited by the new component declaration.</html>"));
end InheritanceInnerOuterComp;
