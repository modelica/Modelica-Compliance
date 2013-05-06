within ModelicaCompliance.Operators.Events;

model SampleIncorrect
  extends Icons.TestCase;
  
  Real r = 1.5;
  Integer i;
equation
  when sample(r,0.1) then
    i = pre(i)+1;
  end when;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the first argument to sample shall not be a constant.It need to be a parameter expression.</html>"));
end SampleIncorrect;
