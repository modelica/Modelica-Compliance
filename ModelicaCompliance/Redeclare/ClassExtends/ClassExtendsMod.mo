within ModelicaCompliance.Redeclare.ClassExtends;


model ClassExtendsMod
  extends Icons.TestCase;

  model A
    replaceable model B
      Real x = 0.0;
    end B;
  end A;

  extends A;

  model extends B(x = 1.0)
    Real y = 2.0;
  end B;

  B b;
equation
  assert(Util.compareReal(b.x, 1.0), "c.b.x was not set correctly.");
  assert(Util.compareReal(b.y, 2.0), "c.b.y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a modifier on a class extends is applied to the
        inherited class.</html>"));
end ClassExtendsMod;
