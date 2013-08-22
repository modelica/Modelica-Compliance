within ModelicaCompliance.Scoping.NameLookup.Composite;

model OperatorFunctionLookupViaComp
  extends Icons.TestCase;

  operator record OR
    Real x;

    encapsulated operator function '+'
      import ModelicaCompliance.Scoping.NameLookup.Composite.FunctionLookupViaArrayElement.OR;
      input OR or1;
      input OR or2;
      output OR result;
    algorithm
      result := OR(x = or1.x + or2.x);
    end '+';
  end OR;

  OR or1(x = 1.0);
  OR or2(x = 2.0);
  OR or3 = or1.'+'(or1, or2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to look up an operator function
        via a component.</html>"));
end OperatorFunctionLookupViaComp;
