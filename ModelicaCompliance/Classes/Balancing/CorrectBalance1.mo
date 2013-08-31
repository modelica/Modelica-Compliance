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
  
  extends Capacitor(C = 10);

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.7"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that a balanced model works fine.</html>"));
end CorrectBalance1;

