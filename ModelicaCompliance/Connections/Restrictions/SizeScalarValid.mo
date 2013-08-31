within ModelicaCompliance.Connections.Restrictions;

model SizeScalarValid
  extends Icons.TestCase;

  connector C
    constant Real c = 1.0;
    parameter Real p = 2.0;
    Real e = 3.0;
    input Real i = 4.0;
    output Real o = 5.0;
    flow Real f;
    stream Real s = 6.0;
  end C;

  model M
    C c;
  end M;

  M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the number of variables is counted correctly when
        checking the size restriction on connector classes.</html>"));
end SizeScalarValid;
