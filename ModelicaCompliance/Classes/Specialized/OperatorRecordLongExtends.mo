within ModelicaCompliance.Classes.Specialized;

model OperatorRecordLongExtends
  extends Icons.TestCase;

  operator record OR
    Real x;

    encapsulated operator function '+'
      import ModelicaCompliance.Classes.Specialized.OperatorRecordLongExtends.OR;
      input OR or1;
      input OR or2;
      output OR result;
    algorithm
      result := OR(x = or1.x + or2.x);
    end '+';
  end OR;

  operator record OR2
    extends OR(x = 2.0);
  end OR2;

  OR2 or2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not legal to extend from an operator record
      as a long class definition.</html>"));
end OperatorRecordLongExtends;
