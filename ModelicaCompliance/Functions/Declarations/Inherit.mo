within ModelicaCompliance.Functions.Declarations;

model Inherit
  extends Icons.TestCase;

  function EmptyFunction
  end EmptyFunction;
  
  function NonEmptyFunction1
    extends EmptyFunction;
    input Integer x;
  end NonEmptyFunction1;
  
  function NonEmptyFunction2
    extends NonEmptyFunction1(x = 10);
    output Integer y;
  end NonEmptyFunction2;
  
  function NonEmptyFunction3
    extends NonEmptyFunction2;
  algorithm
    y := x;
  end NonEmptyFunction3;

  Integer i = NonEmptyFunction3();

equation
  assert(i == 10, "i was not set via the function call correctly!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that functions can be inherited and parts can be added/modified.</html>"));
end Inherit;
