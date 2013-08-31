within ModelicaCompliance.Connections.Restrictions;


model SizeArrayValid
  extends Icons.TestCase;

  connector C
    Real e[3];
    flow Real f[3];
  end C;

  C c(e = {1.0, 2.0, 3.0});

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the number of variables is counted correctly when
        checking the size restriction on connector classes with arrays.</html>"));
end SizeArrayValid;
