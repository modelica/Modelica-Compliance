within ModelicaCompliance.Classes.Specialized;

model OperatorRecordEnclosingExtends
  extends Icons.TestCase;

  package A
    operator record OR end OR;
  end A;

  package B
    extends A;
    constant Real x = 23.4;
  end B;

  Real x = B.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to extend from an enclosing scope
        of an operator record.</html>"));
end OperatorRecordEnclosingExtends;
