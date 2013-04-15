within ModelicaCompliance.Functions.Restrictions;

model FunctionProtectedArguments
  extends Icons.TestCase;

  function func
    input Integer a;
    output Integer b;
  protected
    input Integer c;
    output Integer d;
  algorithm
    a := b;
    d := c;
  end func;

  Integer x = func(2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that you should not have any protected formal parameters in a function.
    Each input formal parameter of the function must be prefixed by the keyword input, and each result formal parameter by the keyword output. All public variables are formal parameters.</html>"));
end FunctionProtectedArguments;
