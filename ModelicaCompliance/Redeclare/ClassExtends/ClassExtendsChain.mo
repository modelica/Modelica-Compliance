within ModelicaCompliance.Redeclare.ClassExtends;

model ClassExtendsChain
  extends Icons.TestCase;

  model A
    replaceable model M
      Real x = 1.0;
    end M;
  end A;

  model B
    extends A;

    replaceable model extends M
      Real y = 2.0;
    end M;
  end B;

  extends B;

  model extends M
    Real z = 3.0;
  end M;

  M m;
equation
  assert(Util.compareReal(m.x, 1.0), "m.x was not correctly set.");
  assert(Util.compareReal(m.y, 2.0), "m.y was not correctly set.");
  assert(Util.compareReal(m.z, 3.0), "m.z was not correctly set.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to have a chain of class extends.</html>"));
end ClassExtendsChain;
