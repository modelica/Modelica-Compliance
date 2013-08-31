within ModelicaCompliance.Connections.Expandable;

model InputVariable
  extends Icons.TestCase;

  expandable connector EngineBus
  end EngineBus;

  connector RealOutput = output Real;
  connector RealInput = input Real;

  block Sensor
    RealOutput speed = 1.0;
  end Sensor;

  block Actuator
    RealInput speed = 1.0;
  end Actuator;

  model Engine
    EngineBus bus;
    Sensor sensor;
    Actuator actuator;
  equation
    connect(bus.speed, sensor.speed);
  end Engine;

  Engine engine;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's ok for a variable to appear as input in one
        expandable connector, as long as it appears as non-input in at least one
        other expandable connector instance in the same augmentation set.</html>"));
end InputVariable;
