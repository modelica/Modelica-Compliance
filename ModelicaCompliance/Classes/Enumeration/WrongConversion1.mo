within ModelicaCompliance.Classes.Enumeration;

model WrongConversion1
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  
  parameter Integer a = E.three;
  parameter Integer i[E] = {E.two, E.one, E.three};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a enumeration cannot be assigned to Integer.</html>"));
end WrongConversion1;
