within ModelicaCompliance.Redeclare.ConstrainingType;

model RedeclareConstrainingTypeMod
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 1.0;
    Real y = 1.0;
  end B;

  class C
    Real x = 1.0;
    Real y = 1.0;
  end C;

  class D
    replaceable B b constrainedby A;
  end D;

  class E
    extends D(replaceable B b constrainedby B(x = 2.0, y = 3.0));
  end E;

  class F
    extends E(redeclare C b);
  end F;

  F c;
equation
  assert(Util.compareReal(c.b.x, 2.0), "c.b.x was not set correctly.");
  assert(Util.compareReal(c.b.y, 3.0), "c.b.y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to redefine the constraining type
        in a redeclaration, and have the modifiers on the new constraining type
        be applied in subsequent redeclarations.</html>"));
end RedeclareConstrainingTypeMod;
