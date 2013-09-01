within ModelicaCompliance.Classes.Enumeration;

model WrongConversion6
  extends Icons.TestCase;

  type Init = enumeration(one, two, three);
  model A
    expandable connector C
      Real i;
    end C;

    connector InitInput = input Init;
    InitInput u;
    C c;
    Real x(start = 0, fixed = true);
  equation 
    connect(c.i, u);
    x = c.i * der(x);
  end A;

  A a;
  connector InitConnector = Init;
  InitConnector y;
equation 
  connect(a.u, y);
  y = 1;  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that you cannot connect an enumeration with Real without conversion.</html>"));
end WrongConversion6;
