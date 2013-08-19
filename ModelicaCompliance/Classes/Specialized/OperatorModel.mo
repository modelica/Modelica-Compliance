within ModelicaCompliance.Classes.Specialized;

model OperatorModel
  extends Icons.TestCase;

  operator record OR
    Real x;

    encapsulated operator '+'
      import ModelicaCompliance.Classes.Specialized.OperatorModel.OR;

      model M
        Real x = 2.0;
      end M;

      function add
        input OR or1;
        input OR or2;
        output OR result;
      algorithm
        result := OR(x = or1.x + or2.x);
      end add;
    end '+';
  end OR;

  OR or1(x = 1.0);
  OR or2(x = 2.0);
  OR or3 = or1 + or2;
  OR.'+'.M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that operators are not allowed to contain models,
        only declarations of functions.</html>"));
end OperatorModel;
