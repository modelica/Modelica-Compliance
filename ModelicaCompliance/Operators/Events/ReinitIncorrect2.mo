within ModelicaCompliance.Operators.Events;

model ReinitIncorrect2
  extends Icons.TestCase;
  
  parameter Real x=0.1; 
equation
  when time > 1 then 
    reinit(x, 2*x); 
  end when;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the first argument to reinit shall not be a prameter.It must be a Real variable.</html>"));
end ReinitIncorrect2;
