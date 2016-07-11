within ModelicaCompliance.Functions.Declarations;

model Illegal2
  extends Icons.TestCase;

  function EmptyFunction
  end EmptyFunction;
  
  function NonEmptyFunction
    extends EmptyFunction;
    input Integer x;
    output Integer z;
  algorithm
    x := 1;
    z := x;
  end NonEmptyFunction;

  Integer i = NonEmptyFunction(1);

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inputs to functions cannot be assigned inside the function.</html>"));
end Illegal2;
