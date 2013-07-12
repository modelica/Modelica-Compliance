within ModelicaCompliance.Components.Variability;

model DiscreteSubCompModel
  extends Icons.TestCase;

  model M
    discrete Real x;
  end M;

  M m;
equation
  when sample(0.0, 1.0) then
    m.x = 1.0;
  end when; 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a variable assigned in a when-clause may not be
        defined in a sub-component of specalized class model.</html>"));
end DiscreteSubCompModel;
