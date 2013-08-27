within ModelicaCompliance.Redeclare.ClassExtends;

model ClassExtendsNonReplaceable
  extends Icons.TestCase;

  model A
    model B
      Real x = 1.0;
    end B;
  end A;

  extends A;

  model extends B
    Real y = 2.0;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to use class extends on a
        non-replaceable class.</html>"));
end ClassExtendsNonReplaceable;
