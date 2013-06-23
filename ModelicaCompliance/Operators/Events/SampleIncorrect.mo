within ModelicaCompliance.Operators.Events;

model SampleIncorrect
  extends Icons.TestCase;
  
  Real r = 1.5;
  Integer i;
equation
  when sample(time, 0.1) then
    i = pre(i) + 1;
  end when;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.3"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Tests the first argument to sample must be a parameter expression.</html>"));
end SampleIncorrect;
