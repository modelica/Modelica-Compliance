within ModelicaCompliance.Classes.Specialized;

model OperatorConstant
  extends Icons.TestCase;

  encapsulated package OP
    operator record OR
      Real x;

      encapsulated operator '+'
        import ModelicaCompliance.Classes.Specialized.OperatorConstant.OP.OR;

        constant Real y = 2.0;

        function add
          input OR or1;
          input OR or2;
          output OR result;
        algorithm
          result := OR(x = or1.x + or2.x + y);
        end add;
      end '+';
    end OR;
  end OP;

  OP.OR or1(x = 1.0);
  OP.OR or2(x = 2.0);
  OP.OR or3 = or1 + or2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that operators are not allowed to contain constant,
      only declarations of functions.</html>"));
end OperatorConstant;
