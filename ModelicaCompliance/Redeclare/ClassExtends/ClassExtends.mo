within ModelicaCompliance.Redeclare.ClassExtends;

model ClassExtends
  extends Icons.TestCase;

  model A
    replaceable model B
      Real x = 1.0;
    end B;
  end A;

  extends A;

  model extends B
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
      info = "<html>Simple test of class extends. The inherited model B is
        extended with another component.</html>"));
end ClassExtends;
