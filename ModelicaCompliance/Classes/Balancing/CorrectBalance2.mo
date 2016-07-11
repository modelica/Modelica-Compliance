within ModelicaCompliance.Classes.Balancing;

model CorrectBalance2
  extends Icons.TestCase;
  
  connector Pin
    Real v;
    flow Real i;
  end Pin;

  partial model TwoPin
    Pin p,n;
  end TwoPin;

  model Capacitor
    parameter Real C;
    extends TwoPin;
    Real u(fixed = true);
  equation 
    0 = p.i + n.i;
    u = p.v - n.v;
    C*der(u) = p.i;
  end Capacitor;

  model Resistor
    parameter Real R(start = 1);
    extends TwoPin;
    Real v;
  equation 
    v = p.v - n.v;
    0 = p.i + n.i;
    v = R*p.i;
  end Resistor;

  model Ground
    Pin p;
  equation
    p.v = 0;
  end Ground;

  model Circuit
   extends TwoPin;
   replaceable TwoPin t;
   Capacitor c(C = 12);
   Ground g;
  equation 
   connect(p, t.p);
   connect(t.n, c.p);
   connect(c.n, n);
   connect(g.p, p);
  end Circuit;

  extends Circuit(redeclare Resistor t(R = 1));

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.7"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that a balanced model works fine.</html>"));
end CorrectBalance2;
