within ModelicaCompliance.Functions.Declarations;

model Default
  extends Icons.TestCase;

  function EmptyFunction
  end EmptyFunction;

  function NonEmptyFunction
    extends EmptyFunction;
    input Integer x = 10;
    output Integer y;
  algorithm
    y := x;
  end NonEmptyFunction;

  Integer i = NonEmptyFunction(100);
  Integer j = NonEmptyFunction(); // call without input, takes the default

equation
  assert(i == 100, "i was not set via the function call correctly!");
  assert(j == 10, "j was not set via the function call correctly!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that default values can be used in functions.</html>"));
end Default;
