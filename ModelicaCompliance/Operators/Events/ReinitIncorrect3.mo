within ModelicaCompliance.Operators.Events;

model ReinitIncorrect3
  extends Icons.TestCase;
  
  constant Real x=0.1; 
equation
  when time > 1 then 
    reinit(x, 2*x); 
  end when;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the first argument to reinit shall not be a constant.It must be a Real variable.</html>"));
end ReinitIncorrect3;
