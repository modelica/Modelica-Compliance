within ModelicaCompliance.Components.Prefixes;

model FunctionalInput
  extends Icons.TestCase;

  function f
    input PF pf;
  algorithm
  end f;

  partial function PF
    input Real x;
    output Real y;
  end PF;

  function CF
    input Real x;
    output Real y;
  algorithm
    y := x;
  end CF;
equation
  f(CF);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2", "12.4.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the <pre>input</pre> prefix is allowed on input
        formal parameters of function type, even if such a component already
        contains <pre>input</pre> or <pre>output</pre>.</html>"));
end FunctionalInput;
