within ModelicaCompliance.Functions.Declarations;

model Empty
  extends Icons.TestCase;

  function EmptyFunction
  end EmptyFunction;
  
  function NonEmptyFunction
    extends EmptyFunction;
    input Integer x;
    output Integer y;
  algorithm
    y := x;
  end NonEmptyFunction;

  Integer i = NonEmptyFunction(100);

equation
  assert(i == 100, "i was not set via the function call correctly!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that empty functions can be declared.</html>"));
end Empty;
