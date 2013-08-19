within ModelicaCompliance.Algorithms.When;

model WhenStatementsIdenticalCondition
  extends Icons.TestCase;

  Real x(start = 1);
  Real y1;
  Real y2;
  Real y3;
algorithm
  when x > 2 then
    y1 := sin(x);
  end when;
  
equation 
  y2 = sin(y1);
  
algorithm
  when x > 2 then
    y3 := 2*x + y1 + y2;  
  end when;  
  
equation
  x = 2*time;

  assert(Util.compareReal(x, 2 * time), "x was not set correctly.");
  assert(Util.compareReal(y1, 0.0), "y1 was not set correctly.");
  assert(Util.compareReal(y2, 0.0), "y2 was not set correctly.");
  assert(Util.compareReal(y3, 0.0), "y3 was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests using several algorithm sections having when-statment with identical conditions.</html>"));
end WhenStatementsIdenticalCondition;
