within ModelicaCompliance.Redeclare.ClassExtends;

model NonRedeclareClassExtends
  extends Icons.TestCase;

  model A
    replaceable model M
      Real x = 1.0;
    end M;

    M m_a;
  end A;

  extends A;

  model extends M
    Real y = 2.0;
  end M;

  Real y = m_a.y;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that only the inherited declaration is replaced when
        using class extends without redeclare, and not the original declaration.
        This test should fail since m_a.y should not exist, since m_a should use
        the original declaration.</html>"));
end NonRedeclareClassExtends;
