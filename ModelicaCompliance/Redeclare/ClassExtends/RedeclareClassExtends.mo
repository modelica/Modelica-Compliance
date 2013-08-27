within ModelicaCompliance.Redeclare.ClassExtends;


model RedeclareClassExtends
  extends Icons.TestCase;

  model A
    replaceable model M
      Real x = 1.0;
    end M;

    M m_a;
  end A;

  extends A;

  redeclare model extends M
    Real y = 2.0;
  end M;

  M m;
equation
  assert(Util.compareReal(m_a.x, 1.0), "m_a.x was not set correctly.");
  assert(Util.compareReal(m_a.y, 2.0), "m_a.y was not set correctly.");
  assert(Util.compareReal(m.x, 1.0), "m.x was not set correctly.");
  assert(Util.compareReal(m.y, 2.0), "m.y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to combine class extends with
        redeclare, to also replace the original declaration and not only the
        inherited declaration.</html>"));
end RedeclareClassExtends;
