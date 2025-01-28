within ModelicaCompliance.Scoping.InnerOuter;
model MissingInner
  extends Icons.TestCase;

  type Angle=Real(final quantity="Angle", final unit="rad");
  type Torque=Real(final quantity="Torque", final unit="N.m");
  connector RotationalConnector
    Angle phi;
    flow Torque tau;
  end RotationalConnector;

  model World
    parameter Angle phiPos=0;
    RotationalConnector flange_a(phi=phiPos);
  end World;

  class A
    outer World world;
  end A;

  class B
    A a;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Missing inner is now allowed.</html>"));
end MissingInner;
