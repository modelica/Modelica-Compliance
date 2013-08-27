within ModelicaCompliance.Algorithms.Reinit;

model ReinitInvalidType3
  extends Icons.TestCase;

  constant Real x=0.1; 
algorithm
  when time > 0.6 then 
    reinit(x, 2*x); 
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.6"})),
    experiment(StopTime = 1.0),
    Documentation(
    info = "<html>Tests the first argument to reinit in the body of when statement must be a variable, but x is a constant.</html>"));
end ReinitInvalidType3;
