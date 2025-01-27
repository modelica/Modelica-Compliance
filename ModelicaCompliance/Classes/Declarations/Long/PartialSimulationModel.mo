within ModelicaCompliance.Classes.Declarations.Long;

partial model PartialSimulationModel
  extends Icons.TestCase;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's forbidden for a simulation model to be partial.</html>"));
end PartialSimulationModel;
