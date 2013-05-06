within ModelicaCompliance.Operators.Special;

model DelayIncorrect3
  extends Icons.TestCase;
  
  Real y, z;
equation
  y = sin(time);
  z = delay(y-1, 5.5, 1.0);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function delay shall show an error if delayTime is greater than delayMax.
	        The following relation shall hold: delayTime is greater or equal to zero and less than or equal to delayMax, 
			otherwise an error occurs according to Modelica specification section 3.7.2</html>"));
end DelayIncorrect3;
