within ModelicaCompliance.Functions.Declarations;

model Order
  extends Icons.TestCase;

  function EmptyFunction
  end EmptyFunction;
  
  function NonEmptyFunction
    extends EmptyFunction;
    output Integer x;
    input Integer a;
    output Integer y;
    input Integer b;
  algorithm
    x := a;
    y := b;
  end NonEmptyFunction;

  Integer i = NonEmptyFunction(1, 2); // multiple return call without tuple
  Integer a, b;
equation
  (a, b) = NonEmptyFunction(3, 4); // multiple return call with tuple
  assert(i == 1, "i was not set via the function call correctly!");
  assert(a == 3, "a was not set via the function call correctly!");
  assert(b == 4, "b was not set via the function call correctly!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that orders of arguments in functions can be scrambled.</html>"));
end Order;
