within ModelicaCompliance.Functions.Restrictions;

model FunctionPublicElements
  extends Icons.TestCase;

  function func
    input Integer a;
    output Integer b;
    Integer c;
  algorithm
    c := a;
    b := c;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot have a public element which is not input or output.
    Each input formal parameter of the function must be prefixed by the keyword input, and each result formal parameter by the keyword output. All public variables are formal parameters.</html>"));
end FunctionPublicElements;
