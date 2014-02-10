within ModelicaCompliance.Scoping.MemberAccess;

model AccessNestedAlgorithm
  extends Icons.TestCase;

  model A
    model B
      model C
        Real x = 1.0;
      end C;

      C c;
    end B;

    B b;
  end A;

  A a;
  Real y;
algorithm
  y := a.b.c.x;

  assert(Util.compareReal(y, 1.0), "y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the member access operator on nested instances in an algorithm.</html>"));
end AccessNestedAlgorithm;
