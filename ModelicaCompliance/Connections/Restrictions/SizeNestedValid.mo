within ModelicaCompliance.Connections.Restrictions;

model SizeNestedValid
  extends Icons.TestCase;

  connector Pin
    Real v;
    flow Real i;
  end Pin;

  connector Plug
    parameter Integer m = 3;
    Pin p[m];
  end Plug;

  Plug p(p.v = {1.0, 2.0, 3.0});

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the number of variables is counted correctly when
        checking the size restriction on nested connector classes.</html>"));
end SizeNestedValid;
