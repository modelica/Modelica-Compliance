within ModelicaCompliance.Components.Prefixes;

model PrefixConflictInputFunction
  extends Icons.TestCase;

  type RealInput = input Real;
  
  function f
    input RealInput x;
    output Real y;
  algorithm
    y := x;
  end f;

  Real x = f(4.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that applying <pre>input</pre> to a type already
        declared with <pre>input</pre> is not allowed even in functions, since
        the only exception is for formal parameters of function type.</html>"));
end PrefixConflictInputFunction;
