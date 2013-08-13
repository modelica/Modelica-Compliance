within ModelicaCompliance.Components.Time;

model TimeFunction
  extends Icons.TestCase;

  function f
    output Real t;
  algorithm
    t := time;
  end f;

  Real x = f();
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the built-in variable time can't be used in a
      function, it's only available in models and blocks.</html>"));
end TimeFunction;
