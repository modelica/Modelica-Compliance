within ModelicaCompliance.Connections.Restrictions;


model SizeRecordValid
  extends Icons.TestCase;

  record R
    Real x;
    Real y;
  end R;

  connector C
    R e(x = 1.0, y = 2.0);
    flow R f;
  end C;

  connector C2
    R e(x = 1.0, y = 2.0);
    flow Real f1;
    flow Real f2;
  end C2;

  C c;
  C2 c2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the number of variables in records is counted
        correctly when checking the size restriction on connector classes.</html>"));
end SizeRecordValid;
