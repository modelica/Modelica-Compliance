within ModelicaCompliance.Functions.Restrictions;

model FunctionModel
  extends Icons.TestCase;

  model M
    parameter Real m = 1;
  end M;
  
  function func
    input Real a;
    output Real b;
  protected 
    M m;
  algorithm
    b := a + m.m;
  end func;

  Real x = func(2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot contain components of model restriction.
    A function may only contain components of the restricted classes type, record, operator record, and function; i.e. no model or block components.</html>"));
end FunctionModel;
