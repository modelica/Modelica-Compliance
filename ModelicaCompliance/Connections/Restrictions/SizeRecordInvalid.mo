within ModelicaCompliance.Connections.Restrictions;

model SizeRecordInvalid
  extends Icons.TestCase;

  record R
    Real x = 1.0;
    Real y = 2.0;
  end R;

  connector C
    R e;
    flow Real f;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a connector class with records is rejected if it
        does not follow the size restrictions for connectors.</html>"));
end SizeRecordInvalid;
