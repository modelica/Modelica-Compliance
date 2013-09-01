within ModelicaCompliance.Classes.Enumeration;

model WrongConversion4
  extends Icons.TestCase;

  model A
    type Init = enumeration(one, two, three);

    expandable connector C
      Init i;
    end C;

    connector IntegerInput = input Integer;
    IntegerInput v;
    C c;
    Real x(start = 0, fixed = true);
  equation 
    connect(c.i, v);
    x = c.i * der(x);
  end A;

  A a;
  connector IntegerConnector = Integer;
  IntegerConnector y;
equation 
  connect(a.v, y);
  y = 1;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that you cannot connect an enumeration with Integer without conversion.</html>"));
end WrongConversion4;
