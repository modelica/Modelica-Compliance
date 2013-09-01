within ModelicaCompliance.Classes.Enumeration;

model WrongConversion5
  extends Icons.TestCase;

  type Init = enumeration(one, two, three);
  parameter Real a = if Init.one == 1.2 then 1 else 2;
  parameter Real b = if Init.two > 1.2 then 1 else 2;
  parameter Real c = if Init.one < 1.2 then 1 else 2;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that you cannot compare enumeration to Real without conversion.</html>"));
end WrongConversion5;
