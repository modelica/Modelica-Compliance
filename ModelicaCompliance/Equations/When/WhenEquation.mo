within ModelicaCompliance.Equations.When;

model WhenEquation
  extends Icons.TestCase;

  Real x(start = 1);
  discrete Real y1;
  parameter Real y2 = 3;
  discrete Real y3;
equation  
  x = time - y2;
  when x > 2 then
    y1 = sin(x);      
    y3 = 2*x + y1 + y2; 
  end when; 

  assert(Util.compareReal(x, time - y2), "x was not set correctly.");
  assert(Util.compareReal(y1, 0.0), "y1 was not set correctly.");
  assert(Util.compareReal(y2, 3.0), "y2 was not set correctly.");
  assert(Util.compareReal(y3, 0.0), "y3 was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests When-equation.</html>"));
end WhenEquation;
