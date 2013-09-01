within ModelicaCompliance.Classes.Enumeration;

model WrongConversion3
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  
  parameter Real a = if E.three == 0 then 1 else 2;
  parameter Real b = if E.one > 3 then 3 else 4;
  parameter Real c = if E.two < 1 then 5 else 6;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that you cannot compare an enumeration with Integer without conversion.</html>"));
end WrongConversion3;
