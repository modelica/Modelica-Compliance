within ModelicaCompliance.Classes.Enumeration;

model GoodConversion2
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  
  parameter Real a = Integer(E.three);
  parameter Real i[E] = {Integer(E.two), Integer(E.one), Integer(E.three)};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a enumeration can be assigned to Real via conversion using the Integer(E) function.</html>"));
end GoodConversion2;
