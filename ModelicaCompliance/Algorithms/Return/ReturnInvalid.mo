within ModelicaCompliance.Algorithms.Return;

model ReturnInvalid
  extends Icons.TestCase;
  
  Real x;
  parameter Integer i = 4;
algorithm
  if i == 4 then
    return;
  end if;
  x := 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.5", "12.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that return statement can only be used in an algorithm section of a function.</html>"));
end ReturnInvalid;
