within ModelicaCompliance.Functions.Restrictions;

model FunctionInnerOuter
  extends Icons.TestCase;

  function func
    input Real a;
    output Real b;
  protected 
    outer Real k;
    inner Real l = 5.0;
    record X
      outer Real l;
    end X;
    X x;
  algorithm
    b := a + x.l - k;
  end func;

  inner Real k = 4.0;
  
  Real x = func(2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot have elements with prefix inner or outer.
    The elements of a function may not have prefixes inner, or outer.</html>"));
end FunctionInnerOuter;
