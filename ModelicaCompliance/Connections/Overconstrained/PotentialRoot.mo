within ModelicaCompliance.Connections.Overconstrained;

model PotentialRoot
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
  Connections.branch(m.c1.theta, m.c2.theta);
  Connections.potentialRoot(m.c1.theta);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the Connections.potentialRoot operator.</html>"));
end PotentialRoot;
