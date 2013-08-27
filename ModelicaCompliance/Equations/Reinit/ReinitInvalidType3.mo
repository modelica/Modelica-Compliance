within ModelicaCompliance.Equations.Reinit;

model ReinitInvalidType3
  extends Icons.TestCase;

  constant Real x=0.1; 
equation
  when time > 0.6 then 
    reinit(x, 2*x); 
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.6"})),
    experiment(StopTime = 1.0),
    Documentation(
    info = "<html>Tests the first argument to reinit in the body of when equation must be a variable, but x is a constant.</html>"));
end ReinitInvalidType3;
