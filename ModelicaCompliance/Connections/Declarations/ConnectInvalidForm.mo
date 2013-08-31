within ModelicaCompliance.Connections.Declarations;


model ConnectInvalidForm
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model A
    model B
      C c1;
      C c2;
    end B;

    B b;
  end A;

  A a;
equation
  connect(a.b.c1, a.b.c2);
  a.b.c1.e = 1.0;
  a.b.c1.f = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>The arguments to connect must be on either the form
        c1.c2.c3...cn or m.c.</html>"));
end ConnectInvalidForm;
