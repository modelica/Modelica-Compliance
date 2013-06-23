within ModelicaCompliance.Operators.Events;

model ReinitIncorrect1
  extends Icons.TestCase;
  
  Boolean b(start = false);
equation
  when b then
    reinit(b, true);
  end when;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the first argument to reinit shall not be type Boolean.It must be a subtype of Real.</html>"));
end ReinitIncorrect1;
