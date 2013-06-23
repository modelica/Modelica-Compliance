within ModelicaCompliance.Redeclare.ConstrainingType;

model ReplaceableModWithRedecl
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 2.0;
    Real y = 2.0;
  end B;

  class C
    Real x = 3.0;
    Real y = 5.0;
  end C;

  class D
    replaceable B b(y = 3.0) constrainedby A(x = 4.0);
  end D;

  D c(redeclare C b);
equation
  assert(Util.compareReal(c.b.x, 4.0), "The modification on the constraining type was not applied to c.b.x.");
  assert(Util.compareReal(c.b.y, 5.0), "The modification on b in D should not be applied in the redeclaration.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a modification on a replaceable element with an
        explicit constraining type is not applied in subsequent redeclarations,
        since the modification does not become part of the constraining type.</html>"));
end ReplaceableModWithRedecl;
