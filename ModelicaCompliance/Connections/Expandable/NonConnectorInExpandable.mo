within ModelicaCompliance.Connections.Expandable;

model NonConnectorInExpandable
  extends Icons.TestCase;

  expandable connector EngineBus
    Real speed;
    Real T;
  end EngineBus;

  block Sensor
    connector RealOutput = output Real;
    RealOutput speed = 1.0;
  end Sensor;

  model Engine
    EngineBus bus;
    Sensor sensor;
  equation
    connect(bus.speed, sensor.speed);
  end Engine;

  Engine engine;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's allowed to connect to a component in an
        expandable connector even if it's not declared as a connector.</html>"));
end NonConnectorInExpandable;
