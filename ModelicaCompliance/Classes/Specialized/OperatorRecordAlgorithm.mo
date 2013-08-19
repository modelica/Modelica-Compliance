within ModelicaCompliance.Classes.Specialized;

model OperatorRecordAlgorithm
  extends Icons.TestCase;

  operator record OR
    Real x;
  algorithm
    x := 1.0;
  end OR;

  OR r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that algorithm sections are not allowed in operator records.</html>"));
end OperatorRecordAlgorithm;
