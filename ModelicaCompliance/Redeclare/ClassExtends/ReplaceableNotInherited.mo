within ModelicaCompliance.Redeclare.ClassExtends;

model ReplaceableNotInherited
  extends Icons.TestCase;

  model A
    replaceable model M
      Real x = 1.0;
    end M;
  end A;

  model B
    extends A;

    model extends M
      Real y = 2.0;
    end M;
  end B;

  extends B;

  model extends M
    Real z = 3.0;
  end M;

  M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the replaceability is not 'inherited' when using
        class extends. This test should generate an error since M in B is not
        replaceable.</html>"));
end ReplaceableNotInherited;
