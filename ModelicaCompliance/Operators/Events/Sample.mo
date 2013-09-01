within ModelicaCompliance.Operators.Events;

model Sample
  extends Icons.TestCase;
  
  Real x;
equation
  when sample(0.0, 0.1) then
    x = time;
  end when;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Tests the sample() operator.</html>"));
end Sample;
