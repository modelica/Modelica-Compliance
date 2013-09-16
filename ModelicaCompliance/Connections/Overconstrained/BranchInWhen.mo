within ModelicaCompliance.Connections.Overconstrained;


model BranchInWhen
  extends Icons.TestCase;

  type AC_Angle
    extends Real;

    function equalityConstraint
      input AC_Angle theta1;
      input AC_Angle theta2;
      output Real residue[0];
    algorithm
      assert(abs(theta1 - theta2) < 1.e-10, "theta1 and theta2 are not equal.");
    end equalityConstraint;
  end AC_Angle;

  connector C
    AC_Angle theta;
    Real v;
    flow Real i;
  end C;

  model M
    C c1;
    C c2;
  end M;

  M m;
equation
  m.c1.i = 1.0;
  m.c1.v = 2.0;
  m.c1.theta = 3.0;
  m.c2.theta = 3.0;
  connect(m.c1, m.c2);
  .Connections.root(m.c1.theta);

  when time > 1.0 then
    .Connections.branch(m.c1.theta, m.c2.theta);
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that Connections.branch is not allowed to be used
        inside when-equations.</html>"));
end BranchInWhen;
