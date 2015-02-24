within ModelicaCompliance.Functions.Declarations;

model Local
  extends Icons.TestCase;

  function EmptyFunction
  end EmptyFunction;

  function NonEmptyFunction
    extends EmptyFunction;
    input Integer x = 10;
    output Integer y;
    protected
      Integer z = x;
  algorithm
    y := x + z;
  end NonEmptyFunction;

  Integer i = NonEmptyFunction(100);
  Integer j = NonEmptyFunction(); // call without input, takes the default

equation
  assert(i == 200, "i was not set via the function call correctly!");
  assert(j == 20, "j was not set via the function call correctly!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that locals in functions can be declared.</html>"));
end Local;
