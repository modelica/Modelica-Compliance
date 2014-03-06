within ModelicaCompliance.Components.Variability;

model DiscreteSubCompBlock
  extends Icons.TestCase;

  connector RealInput = input Real;

  block B
    discrete RealInput x(fixed = true);
  end B;

  B b;
equation
  when sample(0.0, 1.0) then
    b.x = 1.0;
  end when; 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a variable assigned in a when-clause may not be
        defined in a sub-component of specalized class block.</html>"));
end DiscreteSubCompBlock;
