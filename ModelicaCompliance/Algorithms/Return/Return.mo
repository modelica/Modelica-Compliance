within ModelicaCompliance.Algorithms.Return;

model Return
  extends Icons.TestCase;

function f
  input Real x;
  output Real r;
algorithm
  r := 2.0 * x;
  if r>20 then 
    return; 
  end if;
  r := r * x;
end f;

  Real x, y;
equation
  x = f(11);
  y = f(5);
  
  assert(Util.compareReal(x, 22.0), "x was not set correctly.");
  assert(Util.compareReal(y, 50.0), "x was not set correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.5", "12.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests return statement in an algorithm section of a function.</html>"));
end Return;
