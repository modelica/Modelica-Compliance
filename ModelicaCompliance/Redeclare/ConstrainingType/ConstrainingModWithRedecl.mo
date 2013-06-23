within ModelicaCompliance.Redeclare.ConstrainingType;

model ConstrainingModWithRedecl
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 2.0;
  end B;

  class C
    Real x = 3.0;
  end C;

  class D
    replaceable B b constrainedby A(x = 4.0);
  end D;

  D c(redeclare C b);
equation
  assert(Util.compareReal(c.b.x, 4.0), "The modification on the constraining type was not applied to b.x.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the modification on the constraining type is
        applied in a redeclaration.</html>"));
end ConstrainingModWithRedecl;
