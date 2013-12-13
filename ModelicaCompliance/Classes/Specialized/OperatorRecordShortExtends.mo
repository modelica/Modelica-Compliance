within ModelicaCompliance.Classes.Specialized;

model OperatorRecordShortExtends
  extends Icons.TestCase;

  encapsulated package OP
    operator record OR
      Real x;

      encapsulated operator function '+'
        import ModelicaCompliance.Classes.Specialized.OperatorRecordShortExtends.OP.OR;
        input OR or1;
        input OR or2;
        output OR result;
      algorithm
        result := OR(x = or1.x + or2.x);
      end '+';
    end OR;

    operator record OR2 = OR(x = 2.0);
  end OP;

  OP.OR2 or2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's legal to extend from an operator record as a
        short class definition.</html>"));
end OperatorRecordShortExtends;
