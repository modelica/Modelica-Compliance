within ModelicaCompliance.Classes.Balancing;

model CorrectBalance1
  extends Icons.TestCase;

  connector Pin
    Real v;
    flow Real i;
  end Pin;

  model Capacitor
    parameter Real C;
    Pin p, n;
    Real u;
  equation
    0 = p.i + n.i; 
    u = p.v - n.v;
    C*der(u) = p.i; 
  end Capacitor;
  
  model ConstantVoltage
    parameter Real V;
    Pin p, n;
    Real u;
  equation
    0 = p.i + n.i;
    u = p.v - n.v;
    u = V;
  end ConstantVoltage;

  model Ground
    Pin p;
  equation
    p.v = 0;
  end Ground;

  Capacitor c(C = 10);
  ConstantVoltage v(V = 1);
  Ground g;
equation
  connect(c.n, v.p);
  connect(c.p, v.n);
  connect(v.n, g.p);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.7"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that a balanced model works fine.</html>"));
end CorrectBalance1;

