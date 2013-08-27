within ModelicaCompliance.Functions.Calls;

model CallEmptyResult
  extends Icons.TestCase;

  function f
    input Real x;
    output Real r1;
  algorithm
    r1 := x + 10;
  end f;

    Real a = 2;
  equation
    f(a);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4", "12.4.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests a function call that does not return any results.</html>"));

end CallEmptyResult;

