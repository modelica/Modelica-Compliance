within ModelicaCompliance.Functions.Declarations;

model Illegal1
  extends Icons.TestCase;

  function EmptyFunction
  end EmptyFunction;
  
  function NonEmptyFunction
    extends EmptyFunction;
    input Integer x;
  end NonEmptyFunction;

  Integer i = NonEmptyFunction(100);

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that functions with only inputs do not return values.</html>"));
end Illegal1;
