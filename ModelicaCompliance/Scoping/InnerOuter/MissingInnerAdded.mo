within ModelicaCompliance.Scoping.InnerOuter;
model MissingInnerAdded
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
    annotation (
      defaultComponentName = "world",
      defaultComponentPrefixes = "inner",
      missingInnerMessage = "The world inner variable is missing");
  end World;

  class A
    outer World world;
  end A;

  class B
    A a;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4", "17.6"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that missing inner is added automatically if an annotation for it is specified.</html>"));
end MissingInnerAdded;
