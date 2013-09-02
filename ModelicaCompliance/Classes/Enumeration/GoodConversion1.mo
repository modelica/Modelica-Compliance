within ModelicaCompliance.Classes.Enumeration;

model GoodConversion1
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  
  parameter Integer a = Integer(E.three);
  parameter Integer i[E] = {Integer(E.two), Integer(E.one), Integer(E.three)};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a enumeration can be assigned to Integer via conversion using the Integer(E) function.</html>"));
end GoodConversion1;
